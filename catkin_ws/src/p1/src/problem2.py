#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
import numpy as np


""" Use numpy to draw a flower."""
class FlowerTurtle:

    def __init__(self):
        # Start a new node named 'flower'
        rospy.init_node('flower',anonymous=True)
        # Define a publisher for '/turtle1/cmd_vel' topic with a queue size of 10
        self.flower_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
        # Set the rate to be 5
        self.rate = rospy.Rate(5)
        pass

    def draw_flower(self):

        # calculate constant values, see written assignment
        M1 = np.matrix('1.5 -1.5 0; -1.5 0 2; 2.5 0 0')
        M2 = np.matrix('3 5 9; -1 2 6; -3 2 0')
        a = (M1 * M2)[0,1] + (M1 * M2)[1,1]
        b = - (np.inner(M1,M2)[0,2] + np.inner(M1,M2)[1,2]) - 1
	A = np.inner(M1,M2)[0,1] - np.inner(M1,M2)[0,0] + 0.5
	B = - ((M2 * M1)[1,2] - (M2 * M1)[2,1])
        max_times = (np.linalg.det(M2)/(-9)) -4

        # set the values of the above constants to rosparams (see problem 1 for reference)
        # the rosparams should be named: 'a', 'b', 'A', 'B', 'max_times' and should be of type float

	rospy.set_param('a', float(a))
        rospy.set_param('b', float(b))
        rospy.set_param('A', float(A))
        rospy.set_param('B', float(B))

	vel_msg = Twist()
        count = 0
        times = 1
        while not rospy.is_shutdown():

            """ Publish velocity message with angular z = B * cos(b*count)
                and linear x = A * sin(a*count). Use numpy for trig operations."""
            vel_msg.linear.x = A * np.sin(a*count)
	    vel_msg.angular.z = B * np.cos(b*count)
	    self.flower_publisher.publish(vel_msg)
	    self.rate.sleep()

            count += 0.1

            """ If count is greater than 2(times)(PI), publish a
                velocity message with angular z = 5.
                Then increment times by 1.
                If times is greater than max_times stop drawing the flower.
               """
	    if (count > 2*times*np.pi) and (times <= max_times):
		vel_msg.linear.x = 0
	        vel_msg.angular.z = 5
		self.flower_publisher.publish(vel_msg)
		self.rate.sleep()
		times += 1

	    if (count > 2*times*np.pi) and (times > max_times):
		vel_msg.linear.x = 0
	        vel_msg.angular.z = 0
		self.flower_publisher.publish(vel_msg)
		self.rate.sleep()
		break;

if __name__ == '__main__':
    try:
        # Call the appropriate functions so that the turtle draws a flower.
	flower = FlowerTurtle()
	flower.draw_flower()
        pass
    except rospy.ROSInterruptException: pass
