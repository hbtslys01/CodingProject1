#!/usr/bin/env python2
# coding=utf8
import rospy
import random
import numpy as np
import time
import math
import std_msgs.msg as std_msgs
import std_srvs.srv as std_srvs
from geometry_msgs.msg import Twist,Pose
import p4.msg as p4_msg
import p4.srv as p4_srv
from tf.transformations import *

class PickAndPlaceRobot:

    def __init__(self):
        rospy.init_node('problem3')
	rospy.wait_for_service('problem1a')
	self.p1 = rospy.ServiceProxy('problem1a', p4_srv.PositionBucket )
	rospy.wait_for_service('problem2a')
	self.p2a = rospy.ServiceProxy('problem2a', p4_srv.FindPath )
	rospy.wait_for_service('problem2b')
	self.p2b = rospy.ServiceProxy('problem2b', p4_srv.FollowPath )
	rospy.wait_for_service('/vrep/bucket/pos/get')
	self.s = rospy.ServiceProxy('/vrep/bucket/pos/get', p4_srv.GetPosition )
	rospy.wait_for_service('/vrep/block1/pos/get')
	self.b1 = rospy.ServiceProxy('/vrep/block1/pos/get', p4_srv.GetPosition)
	rospy.wait_for_service('/vrep/block2/pos/get')
	self.b2 = rospy.ServiceProxy('/vrep/block2/pos/get', p4_srv.GetPosition )
	rospy.wait_for_service('/vrep/block3/pos/get')
	self.b3 = rospy.ServiceProxy('/vrep/block3/pos/get', p4_srv.GetPosition)
	rospy.wait_for_service('/vrep/block4/pos/get')
	self.b4 = rospy.ServiceProxy('/vrep/block4/pos/get', p4_srv.GetPosition )
	rospy.wait_for_service('/vrep/block5/pos/get')
	self.b5 = rospy.ServiceProxy('/vrep/block5/pos/get', p4_srv.GetPosition )
	rospy.wait_for_service('/vrep/youbot/arm/reach')
	self.reach = rospy.ServiceProxy('/vrep/youbot/arm/reach', p4_srv.ReachPos )
	rospy.wait_for_service('/vrep/youbot/gripper/grip')
	self.grip = rospy.ServiceProxy('/vrep/youbot/gripper/grip', std_srvs.SetBool )
	self.setangle1 = rospy.Publisher('/vrep/youbot/arm/joint1/angle', std_msgs.Float64, queue_size=10)
	self.setangle2 = rospy.Publisher('/vrep/youbot/arm/joint2/angle', std_msgs.Float64, queue_size=10)
	self.setangle3 = rospy.Publisher('/vrep/youbot/arm/joint3/angle', std_msgs.Float64, queue_size=10)
	self.setangle4 = rospy.Publisher('/vrep/youbot/arm/joint4/angle', std_msgs.Float64, queue_size=10)
	self.setangle5 = rospy.Publisher('/vrep/youbot/arm/joint5/angle', std_msgs.Float64, queue_size=10)
	self.vel_publisher = rospy.Publisher('/vrep/youbot/base/cmd_vel', Twist, queue_size=10)
	self.rate = rospy.Rate(10)
	
	#print("ini done")
        #pass
    #def callback(self):
	#print("enter call")
	b = [self.b1(),self.b2(),self.b3(),self.b4(),self.b5()]
	self.p1()
	for i in range(1,6):
		start = rospy.wait_for_message('/vrep/youbot/base/pose',Pose).position
		goal = b[i-1].pos #from current position to block
		num_waypoints = 3
		path = self.p2a(start,goal,num_waypoints).path
		self.p2b(path)
		
		pos = goal
		pos.z += 0.03
		diff = 1
		while  diff > 1e-6:
			gripos1 = rospy.wait_for_message('/vrep/youbot/arm/gripper/pose',Pose).position
			self.reach(pos).success
			gripos2 = rospy.wait_for_message('/vrep/youbot/arm/gripper/pose',Pose).position
			diff = gripos2.z - gripos1.z
		data = True
		times = 0
		while self.grip(data).success and times < 10:
			times += 1
			self.grip(data)
		self.setangle1.publish(std_msgs.Float64(0))
		self.setangle2.publish(std_msgs.Float64(0))
		self.setangle3.publish(std_msgs.Float64(0))
		self.setangle4.publish(std_msgs.Float64(0))
		self.setangle5.publish(std_msgs.Float64(0))
		
		start = rospy.wait_for_message('/vrep/youbot/base/pose',Pose).position
		goal = self.s().pos #from current position to bucket
		num_waypoints = 3
		path = self.p2a(start,goal,num_waypoints).path
		self.p2b(path)
		pos = goal
		diff = 1
		while  diff >1e-6:
			gripos1 = rospy.wait_for_message('/vrep/youbot/arm/gripper/pose',Pose).position
			self.reach(pos).success
			gripos2 = rospy.wait_for_message('/vrep/youbot/arm/gripper/pose',Pose).position
			diff = gripos2.z - gripos1.z
		data = False
		times = 0
		while self.grip(data).success and times < 10:
			times += 1
			self.grip(data)
		
		self.grip(data)
		self.setangle1.publish(std_msgs.Float64(0))
		self.setangle2.publish(std_msgs.Float64(0))
		self.setangle3.publish(std_msgs.Float64(0))
		self.setangle4.publish(std_msgs.Float64(0))
		self.setangle5.publish(std_msgs.Float64(0))
if __name__ == '__main__':
    pick_and_place_robot = PickAndPlaceRobot()
    rospy.spin()
