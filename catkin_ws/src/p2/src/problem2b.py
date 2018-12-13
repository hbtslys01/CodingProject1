#!/usr/bin/env python2
# coding=utf8
import rospy
import random
import numpy
import time
from math import sqrt, atan2, pi, radians, sin, cos, atan, ceil,tan
import std_msgs.msg as std_msgs
import std_srvs.srv as std_srvs
from geometry_msgs.msg import Twist
import p2.msg as p2_msg


class Differential:

    def __init__(self):
	rospy.init_node('p2b', anonymous=True)
	self.pio_subscriber = rospy.Subscriber('/p2/differential', p2_msg.Differential, self.differential_callback)
	self.pio2_publisher = rospy.Publisher('/vrep/differential/cmd_vel', p2_msg.Differential, queue_size=10)
	self.rate = rospy.Rate(10)
        pass


    def differential_callback(self, data):
	b = rospy.get_param("diff_base_distance")
	max_vel = rospy.get_param("diff_max_vel")
	diff = p2_msg.Differential()
	k = (data.right_vel-data.left_vel)/(data.right_vel+data.left_vel) * 1. 
	if(data.left_vel > max_vel and data.left_vel >= data.right_vel):
		diff.left_vel = max_vel
		diff.right_vel = (k + 1.) * max_vel / (1. - k)
		#diff.right_vel = data.right_vel * max_vel / data.left_vel * 1.
	elif (data.right_vel > max_vel and data.left_vel < data.right_vel):
		diff.right_vel = max_vel
		diff.left_vel = (1. - k) * max_vel / (1. + k)
		#diff.left_vel = data.left_vel * max_vel / data.right_vel * 1.
	else:
		diff = data
	self.pio2_publisher.publish(diff)
        pass



if __name__ == '__main__':
    diff = Differential()
    rospy.spin()
