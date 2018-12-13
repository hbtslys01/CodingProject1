#!/usr/bin/env python2
import rospy
import numpy as np
from turtlesim.srv import Spawn
from random import randint, choice
from p1.srv import *
from geometry_msgs.msg import Twist

def draw_flower():

    # initialize 'draw_turtle' node
    rospy.init_node('draw_turtle')

    # use the 'spawn' service to create more turtles
    # blocks while waiting for service to become available
    rospy.wait_for_service('spawn')

    try:
        # create a handle for calling the spawn service
        turtle_spawn = rospy.ServiceProxy('spawn' , Spawn )
        pass
    except rospy.ServiceException as ex:
        rospy.logerr('Could not spawn turtle! Exception: {}'.format(ex))
        rospy.signal_shutdown("Couldn't spawn!")

    try:
        # set turtle name
        # uncomment next 4 lines after turtle_spawn is initialized
        turtle_name = turtle_spawn(randint(3, 8),
                                randint(3, 8),
                                0,
                                None).name
        pass

    except rospy.ServiceException as ex:
        rospy.logerr('Could not spawn turtle! Exception: {}'.format(ex))
        rospy.signal_shutdown("Couldn't spawn!")

    # use custom draw service
    # set up draw service (same as problem 3)
    rospy.wait_for_service('draw')
    draw_flower = rospy.ServiceProxy('draw' , Draw )
    # set up velocity publisher for '{}/cmd_vel'.format(turtle_name) topic
    velocity_publisher =  rospy.Publisher('{}/cmd_vel'.format(turtle_name), Twist, queue_size=10)
    # set rate to be 5
    rate = rospy.Rate(5)

    times = 1
    max_times = 4
    count = 0
    rotate = 0
    while not rospy.is_shutdown():
        # use the draw service to get the velocity message to publish
        # publish message
        velocity_publisher.publish(draw_flower(count,rotate).vel)
        rate.sleep()

        rotate = 0
        count += 0.1
        if count > 2 * times * np.pi:
            times += 1
            rotate = 1
            if times > max_times:
                rospy.spin()

if __name__ == '__main__':
    # call the appropriate function
    draw_flower()
    pass
