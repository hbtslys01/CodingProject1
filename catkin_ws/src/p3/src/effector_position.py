#!/usr/bin/env python
'''Provide valid youBot end effector positions for p3'''

from functools import reduce
from math import radians, pi, cos, sin
from random import uniform
import numpy as np
from numpy import cos, sin
import rospy
from geometry_msgs.msg import Point
from std_msgs.msg import Float64
from p3.msg import JointAngles, PointArray
from p3.srv import Problem3a as IKService


# Values taken from youBot design spec
LENGTHS = [0.033, 0.155, 0.135, 0, 0]
TWISTS = [-pi/2, 0, 0, pi/2, 0]
OFFSETS = [0, 0, 0, 0, 0.2175]
Z = [0, -pi/2, 0, pi/2, 0]

ERR_THRESHOLD = 50

class GenPositions:

	def __init__(self):
		# inits for positions
		self.target_pub = rospy.Publisher('vrep/youbot/target/position', Point, queue_size=10)
		self.pub_rate = rospy.Rate(5)

		# inits for generating configs
		rospy.Subscriber('/vrep/youbot/arm/pose', JointAngles, self.joint_angle_callback)
		self.angles = [0,0,0,0,0]
		self.test_rate = rospy.Rate(5)

		# publishers for valid config (on visible youBot)
		self.arm_pubs = [
			rospy.Publisher('vrep/youbot/arm/joint{}/angle'.format(i), Float64, queue_size=10)
			for i in range(1,6)
		]

		# test student ik calculations by calling their service
		rospy.wait_for_service('ik')
		try:
			self.ik = rospy.ServiceProxy('ik', IKService)
		except rospy.ServiceException as e:
			rospy.logerr('Exception: {}'.format(e))
			rospy.signal_shutdown('Could not connect to inverse kinematics service')

		# joint limits are symmetric about zero
		self.limits = [radians(169), radians(90), radians(131), radians(102), radians(90)]


	def create_position(self):
		# generate valid position
		position = self.make_pos()

		while float(position[2]) <= 0.0:
			position = self.make_pos()

		x, y, z = float(position[0]), float(position[1]), float(position[2])

		# compute ik using students' service and publish to youBot arm
		#print('position = {}'.format(position))
		#print('type(position) = {}'.format(type(position)))

		joint_angles = self.ik(Point(x, y, z)).angles

		#print('angles = {}'.format(joint_angles))

		for pub, val in zip(self.arm_pubs, joint_angles.angles):
			pub.publish(val)

		# publish generated positions to target
		self.target_pub.publish(x, y, z)

		self.pub_rate.sleep()


	def make_pos(self):
		# create and return a feasible position for the youBot end effector
		config = self.gen_config()[:4]

		transforms = [self.make_transform(Z[i] + t, OFFSETS[i], LENGTHS[i], TWISTS[i]) for (i,t) in enumerate(config)]
		T = reduce(lambda x, y: x * y, transforms)

		return (T * np.matrix([0, 0, 0, 1]).T)


	def gen_config(self):
		# create and return a valid arm configuration
		return [uniform(-ll, ll) for ll in self.limits]


	def make_transform(self, theta, d, a, alpha):
		ct = cos(theta)
		st = sin(theta)
		ca = cos(alpha)
		sa = sin(alpha)
		return np.matrix([[ct, -st*ca, st*sa, a*ct],
						[st, ct*ca, -ct*sa, a*st],
						[0, sa, ca, d],
						[0, 0, 0, 1]])


	def joint_angle_callback(self, data):
		self.angles = data.angles


if __name__ == '__main__':
	rospy.init_node('end_effector', anonymous=True)
	pos = GenPositions()

	while not rospy.is_shutdown():
		pos.create_position()
