#!/usr/bin/env python
'''A very hacky naive navigation node for cp5'''

import sys
from math import atan2
from random import uniform

import numpy as np
import rospy
from geometry_msgs.msg import Pose, Twist

import vrep

GOAL_THRESHOLD = 0.15
BOUNDARY_LEN = 5
BLOCK_RADIUS = 0.025
YOUBOT_RADIUS = 0.2
TURN_COEFF = 10
DRIVE_COEFF = 10


class Driver(object):
  '''Simple random-walk driver class'''

  def __init__(self, vrep_client):
    self.goal = None
    self.path_vec = None
    self.youbot_pose = np.zeros(3)
    self.last_pose = np.zeros(3)
    rospy.Subscriber('vrep/youbot/base/pose', Pose, self.youbot_pos_callback)
    self.vel_pub = rospy.Publisher('vrep/youbot/base/cmd_vel', Twist, queue_size=5, latch=True)
    self.nav_rate = rospy.Rate(10)
    self.vrep_client = vrep_client
    self.blocks = {
        i: vrep.simxGetObjectHandle(vrep_client, 'block{}'.format(i), vrep.simx_opmode_blocking)[1]
        for i in range(1, 6)
    }

    self.block_positions = np.zeros((5, 2))
    self.update_block_positions()
    self.turn = True

  def update_block_positions(self):
    '''Get the latest block coordinates'''
    for block in self.blocks:
      self.block_positions[block - 1] = np.array(
          vrep.simxGetObjectPosition(vrep_api, self.blocks[block], -1,
                                     vrep.simx_opmode_blocking)[1])[:2]

  def youbot_pos_callback(self, pos):
    '''Callback for youBot position subscriber'''
    self.last_pose[0] = self.youbot_pose[0]
    self.last_pose[1] = self.youbot_pose[1]
    self.last_pose[2] = self.youbot_pose[2]
    self.youbot_pose[0] = pos.position.x
    self.youbot_pose[1] = pos.position.y
    ori = pos.orientation
    sin_val = 2.0 * (ori.w * ori.z + ori.x * ori.y)
    cos_val = 1.0 - 2.0 * (ori.y * ori.y + ori.z * ori.z)
    self.youbot_pose[2] = atan2(sin_val, cos_val)

  def collision_check(self, path):
    '''Check if a path collides with any obstacles'''
    # Get vector perpendicular to the path
    path_vec = path[1] - path[0]
    perp = np.array([-path_vec[1], path_vec[0]])
    # Normalize the perpendicular vector
    perp /= perp.dot(perp)
    for block in self.blocks:
      pos = self.block_positions[block - 1]
      # Get the vector between the path start and the block position
      vec = pos - path[0]
      # Compute the perpendicular distance from the path to the block position
      dist = abs(vec.dot(perp))
      # If the distance is less than or equal to the radius of the circle overapproximating the
      # block, extended by the youBot's circle so that we can use a line instead of a sleeve, then
      # the path collides with the obstacle
      if dist <= BLOCK_RADIUS + YOUBOT_RADIUS:
        return True

    return False

  def run(self):
    '''Main entry point'''
    while not rospy.is_shutdown():
      self.nav_rate.sleep()
      if self.goal is not None:
        displacement = self.youbot_pose[:2] - self.goal
        if displacement.dot(displacement) <= GOAL_THRESHOLD:
          self.goal = None
          self.path_vec = None

      # Random walk goal choice
      if self.goal is None:
        self.vel_pub.publish(Twist())
        self.update_block_positions()
        while self.goal is None:
          waypoint = np.array([
              uniform(-BOUNDARY_LEN / 2.0, BOUNDARY_LEN / 2.0),
              uniform(-BOUNDARY_LEN / 2.0, BOUNDARY_LEN / 2.0)
          ])
          path = [self.youbot_pose[:2], waypoint]
          path_vec = self.youbot_pose[:2] - waypoint
          if 0.5 < path_vec.dot(path_vec) < 1.0 and not self.collision_check(path):
            self.goal = waypoint
            self.path_vec = path_vec
            self.turn = True
            rospy.logwarn('Driving to: {}'.format(self.goal))

      # P-control
      goal_vec = self.youbot_pose[:2] - self.goal
      goal_angle = atan2(goal_vec[1], goal_vec[0])
      if self.turn\
         and abs(self.youbot_pose[2] - self.last_pose[2]) < 0.01\
         and abs(self.youbot_pose[2] - goal_angle) < 0.15:
        self.turn = False
      elif self.turn and abs(self.youbot_pose[2] - goal_angle) > 0.1:
        turn = Twist()
        turn.angular.z = TURN_COEFF * (self.youbot_pose[2] - goal_angle)
        self.vel_pub.publish(turn)
        continue

      self.turn = False
      delta = goal_vec.dot(goal_vec)
      if abs(delta) > 0.15:
        drive = Twist()
        drive.linear.y = -np.sign(delta) * DRIVE_COEFF * goal_vec.dot(goal_vec)
        self.vel_pub.publish(drive)


if __name__ == '__main__':
  rospy.init_node('drive', anonymous=True)
  # Start V-REP remote API
  rospy.loginfo('Setting up V-REP remote API')
  # Close any lingering connections
  vrep.simxFinish(-1)
  vrep_api = vrep.simxStart('127.0.0.1', 47505, True, True, 50000, 5)
  # V-REP uses hacky C-style returns to indicate failure
  if vrep_api == -1:
    rospy.logerr("Couldn't connect to V-REP remote API!")
    sys.exit(1)

  driver = Driver(vrep_api)
  driver.run()
  # Disconnect from V-REP
  vrep.simxFinish(vrep_api)
