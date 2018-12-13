#!/usr/bin/env python2
# coding=utf8
import rospy
import random
import numpy
import time
from math import sqrt, atan2, pi, radians, sin, cos, atan, ceil
import std_msgs.msg as std_msgs
import std_srvs.srv as std_srvs
from geometry_msgs.msg import Twist
import p2.msg as p2_msg


class Driver:

    def __init__(self):
	rospy.init_node('omni', anonymous=True)
	self.omni_subscriber = rospy.Subscriber('p2/cmd_vel', Twist, self.cmd_vel_callback)
	self.omni_publisher = rospy.Publisher('vrep/youbot/base/cmd_vel', Twist, queue_size=10)
	self.ack_publisher = rospy.Publisher('vrep/ackermann/cmd_vel', p2_msg.Ackermann, queue_size=10)
	self.diff_publisher = rospy.Publisher('vrep/differential/cmd_vel', p2_msg.Differential, queue_size=10)
	self.rate = rospy.Rate(10)
    pass


    def cmd_vel_callback(self, data):
	self.omni_publisher.publish(data)
	#self.rate.sleep()
	#Ackermann
	ack = p2_msg.Ackermann()
	ack_base_len = rospy.get_param("base_length")
	ack.vel = data.linear.x
	ack_w = data.angular.z
	ack.steering_angle = atan2(ack_base_len * ack_w,ack.vel)
	self.ack_publisher.publish(ack)
	#Differential
	diff = p2_msg.Differential()
	b = rospy.get_param("diff_base_distance")
	diff.left_vel = ack.vel - ack_w * b * 0.5
	diff.right_vel = ack.vel + ack_w * b * 0.5
	self.diff_publisher.publish(diff)
    pass


if __name__ == '__main__':
    driver = Driver()
    rospy.spin()
