#!/usr/bin/env python2
import rospy
import numpy as np
from turtlesim.srv import Spawn
from random import randint, choice
from p1.srv import *
from geometry_msgs.msg import Twist


def draw_flower():

    # initialize 'drawing_turtle' node
    rospy.init_node('drawing_turtle',anonymous=True)
    # use custom draw service
    # blocks while waiting for service to become available
    rospy.wait_for_service('draw')
    try:
        # create a handle for calling the draw service
        draw_flower = rospy.ServiceProxy('draw' , Draw )
        pass
    except rospy.ServiceException as ex:
        rospy.logerr('Could not draw turtle! Exception: {}'.format(ex))
        rospy.signal_shutdown("Couldn't draw!")

    # create velocity publisher and set the publishing rate of 5
    velocity_publisher =  rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    # Set the rate to be 5
    rate = rospy.Rate(5)

    times = 1
    max_times = 7
    count = 0
    rotate = 0
    while not rospy.is_shutdown():
        # use the draw service to get the velocity message to publish
        # see srv.Draw.srv for specifics on the parameters and return value of the draw service 
        vel_msg = draw_flower(count,rotate)

	
		
        # publish the message
        velocity_publisher.publish(vel_msg.vel)
        rate.sleep()
        rotate = 0
        count += 0.1
        if count > 2 * times * np.pi:
            times += 1
            rotate = 1
            if times > max_times:
                rospy.spin()

if __name__ == '__main__':
    # call appropriate function
    draw_flower()
    
    pass
