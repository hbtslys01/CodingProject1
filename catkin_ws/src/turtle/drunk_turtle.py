#!/usr/bin/env python2
import rospy
from geometry_msgs.msg import Twist
from turtlesim.srv import SetPen
from random import randrange, gauss
from math import pi

cmd_vel_pub = rospy.Publisher('cmd_vel',Twist,queue_size=1)
rospy.init_node('teetotaler')#node name

twist = Twist()
rate = rospy.Rate(1)

print "waiting for service"
rospy.wait_for_service('set_pen')
print "got servce"
set_turtle_pen = rospy.ServiceProxy('set_pen',SetPen)

ii = 0
while not rospy.is_shutdown():
    if not ii % 5:
        twist.linear.x = 0
        twist.angular.z = 2 * pi * randrange(-1,2,2)
    else:
        twist.linear.x = 1
        twist.angular.z = (gauss(0,1))
    rr,gg,bb = [randrange(256) for _ in range(3)]
    set_turtle_pen.call(rr,gg,bb,3,0)

    cmd_vel_pub.publish(twist)
    rate.sleep()
    ii += 1 
