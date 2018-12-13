#!/usr/bin/env python

from geometry_msgs.msg import Twist
import rospy
import numpy as np

from p1.srv import Draw



# draw service, see draw.srv for parameters and return values
def draw(req):


    # initalize vel_msg
    vel_msg = Twist()

    # set count to be the count parameter
    count = req.count

    # calculate constant values, see written assignment
    M3 = np.matrix('1 1 2; 3 5 8; 13 21 34')
    M4 = np.matrix('1 8 7; 2 5 3; 9 2 6')
    a = np.linalg.det(M3)-1
    b = -((M3 * M4)[2,0] - (M3 * M4)[2,2])+1
    A = ((np.transpose(np.inner(M3,M4)))[0,0]-(np.transpose(np.inner(M3,M4)))[1,0])/10
    B = ((np.transpose(M3 * M4))[2,1]-(np.transpose(np.inner(M3,M4)))[2,1])/2.0
   


    # set the values of the above constants to rosparams (see problem 1 for reference)
    # the rosparams should be named: 'a', 'b', 'A', 'B' and should be of type float
    rospy.set_param('a', float(a))
    rospy.set_param('b', float(b))
    rospy.set_param('A', float(A))
    rospy.set_param('B', float(B))

    # if rotate is true set the angular velocity to -3
    if req.rotate:
       vel_msg.angular.z = -3
       vel_msg.linear.x = 0
       pass
    # otherwise set angular z = B * cos(b*count)
    # and linear x = A * sin(a*count). Use numpy for trig operations.
    else:
       vel_msg.angular.z = B * np.cos(b*count)
       vel_msg.linear.x =  A * np.sin(a*count)
       pass

    # return return value
    return vel_msg

def draw_server():
  '''The server for the draw service'''
  rospy.init_node('draw_server')
  rospy.loginfo('Started up!')
  # Create service with name: 'draw',  service_class: Draw, and handler: draw
  rospy.Service('draw', Draw, draw)
  rospy.spin()
  rospy.loginfo('Shutting down!')


if __name__ == '__main__':
    # start draw server
    draw_server()
    
    pass
