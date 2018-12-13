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
from math import sqrt, atan2, pi, radians, sin, cos, atan, ceil,tan
import p2.msg as p2_msg


class Ackermann:

    def __init__(self):
	rospy.init_node('p2a', anonymous=True)
	self.omni_subscriber = rospy.Subscriber('p2/ackermann', p2_msg.Ackermann, self.ackermann_callback)
	self.ack2_publisher = rospy.Publisher('vrep/ackermann/cmd_vel', p2_msg.Ackermann, queue_size=10)
	self.rate = rospy.Rate(10)
    


    def ackermann_callback(self, data):
	b1 = rospy.get_param("base1_length")
	b2 = rospy.get_param("base2_length")
	ack2 = p2_msg.Ackermann()
	ack2.steering_angle = atan2(b2 * tan(data.steering_angle),b1)
	ack2.vel=data.vel
	self.ack2_publisher.publish(ack2)
    



if __name__ == '__main__':
    ackermann = Ackermann()
    rospy.spin()
