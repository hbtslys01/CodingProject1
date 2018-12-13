#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
from std_msgs.msg import Float32
import numpy as np


"""Learn how to move a turtle using Twist messages.
    Calculate distance between turtle and a point."""


class Turtle:

    def __init__(self):
        # Starts a new node
        rospy.init_node('move', anonymous=True)

        # Subscribe to /turtle1/pose with callback, self.update_pose
        self.pose_subscriber = rospy.Subscriber('/turtle1/pose', Pose, self.update_pose)
        self.pose = Pose()

        # Create a publisher that publishes to /turtle1/cmd_vel
        self.velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)


        # Specify publishing rate of 10
        self.rate = rospy.Rate(10)

    # move the turtle
    def move(self):

        # Create a Twist message with values that change the turtle's
        # linear and angular velocities
        vel_msg = Twist()
	vel_msg.linear.x = 3
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0
	vel_msg.angular.x = 0 
	vel_msg.angular.y = 0
	vel_msg.angular.z = 0.5 * np.pi

        start_time = rospy.Time.now().to_sec()
        # move for about 1 second
        while not rospy.is_shutdown() and rospy.Time.now().to_sec() - start_time < 1:

            # publish the Twist message to the velocity publisher
            self.velocity_publisher.publish(vel_msg)

            #specify publishing rate (uncomment after rate is set above)
            self.rate.sleep()
            pass
    # set the global pose variable to the data received from the subscriber
    def update_pose(self, data):
        self.pose = data
        pass

    """Calculate the Euclidean distance, using vector operations,
       from the turtle's current position to the point (x,y).
        Set the result as a ros param, named distance."""
    def calculate_distance(self, x, y):

        # use vectors, do not add any more lines here
        vector = np.array([x-self.pose.x, y-self.pose.y])
        distance = np.linalg.norm(vector)

        # set ros parameter to be the distance
	    # Note: you will need to cast the distance value to a float
        rospy.set_param('distance', float(distance))
        pass


if __name__ == '__main__':

    try:
        turtle = Turtle()
        turtle.move()
        turtle.calculate_distance(1, 1)
    except rospy.ROSInterruptException:
        pass
