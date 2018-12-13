#!/usr/bin/env python
''' Provide hand crafted end effector positions to create wave of arm '''
import rospy
from geometry_msgs.msg import Point
from math import radians, pi, cos, sin
from functools import reduce
import numpy as np

# positions of wave
JOINT_CONFIG1 = [-80, 22.91, 72.42, -50]
JOINT_CONFIG2 = [-60, 32.91, 72.42, -50]
JOINT_CONFIG3 = [-40, 42.91, 72.42, -50]
JOINT_CONFIG4 = [-20, 52.91, 72.42, -50]

# values taken from youBot design spec
LENGTHS = [0.033, 0.155, 0.135, 0, 0]
TWISTS = [-pi/2, 0, 0, pi/2, 0]
OFFSETS = [0, 0, 0, 0, 0.2175]
Z = [0, -pi/2, 0, pi/2, 0]


def make_pos(joints):
	# return goal position for given joint config
	config = [radians(joints[0]), radians(joints[1]), radians(joints[2]), radians(joints[3])]

	transforms = [make_transform(Z[i] + t, OFFSETS[i], LENGTHS[i], TWISTS[i]) for (i,t) in enumerate(config)]
	T = reduce(lambda x, y: x * y, transforms)

	return (T * np.matrix([0, 0, 0, 1]).T)

def make_transform(theta, d, a, alpha):
	# make transform for link
	ct = cos(theta)
	st = sin(theta)
	ca = cos(alpha)
	sa = sin(alpha)
	return np.matrix([[ct, -st*ca, st*sa, a*ct],
					[st, ct*ca, -ct*sa, a*st],
					[0, sa, ca, d],
					[0, 0, 0, 1]])



if __name__ == '__main__':
	rospy.init_node('wave_gen', anonymous=True)
	pub = rospy.Publisher('p3/wave', Point, queue_size=10)
	rate = rospy.Rate(10)

	pos1 = make_pos(JOINT_CONFIG1)
	pos2 = make_pos(JOINT_CONFIG2)
	pos3 = make_pos(JOINT_CONFIG3)
	pos4 = make_pos(JOINT_CONFIG4)

	positions = [pos1, pos2, pos3, pos4, pos3, pos2]

	i = 0
	while not rospy.is_shutdown():
		# choose index in serpentine pattern to go back and forth
		new_pos = positions[i % len(positions)]
		i += 1

		x, y, z = float(new_pos[0]), float(new_pos[1]), float(new_pos[2])
		pub.publish(x, y, z)
		rate.sleep()
