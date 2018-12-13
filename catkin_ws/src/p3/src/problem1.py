#!/usr/bin/env python

import rospy
from p3.msg import JointAngles, PointArray
from p3.srv import Problem1 as KinService
from functools import partial
from geometry_msgs.msg import Point
from std_msgs.msg import Float64
import numpy as np
import math

class YouBotFK:
    # This is a standalone foward kinematics service for the KUKA YouBot

    def __init__(self):
        # Initialize a service called 'fk'
	#rospy.init_node('start_vrep', anonymous=True)
	fk = rospy.Service('fk', KinService, self.callback)
        pass


    def dh_matrix(self, theta, d, a, alpha):
        # Return a Denavit-Hartenberg matrix with the provided parameters
	mat = np.matrix([[np.cos(theta), -np.sin(theta)*np.cos(alpha), np.sin(theta)*np.sin(alpha),a*np.cos(theta)],
		[np.sin(theta), np.cos(theta)*np.cos(alpha), -np.cos(theta)*np.sin(alpha),a*np.sin(theta)],
		[0, np.sin(alpha), np.cos(alpha),d], [0,0,0,1]])
        return mat


    def callback(self, req):
        # Handle FK queries by returning a PointArray containing each frame
        # origin in the arm.  The final element of the PointArray is the
        # end-effector position.
	angles = req.angles.angles
	d = 0
	a = [0.033, 0.155, 0.135, 0, 0]
	alpha = [-np.pi/2, 0, 0, np.pi/2, 0]
	arr = PointArray()
	
	
	dh1 = self.dh_matrix(angles[0], d, a[0], alpha[0])
	arr.points.append(Point(dh1[0,3], dh1[1,3], dh1[2,3]))
	dh2 = dh1 * self.dh_matrix(angles[1]-np.pi/2, d, a[1], alpha[1])
	arr.points.append(Point(dh2[0,3], dh2[1,3], dh2[2,3]))
	dh3 = dh2 * self.dh_matrix(angles[2], d, a[2], alpha[2])
	arr.points.append(Point(dh3[0,3], dh3[1,3], dh3[2,3])) 
	dh4 = dh3 * self.dh_matrix(angles[3]+np.pi/2, d, a[3], alpha[3])
	arr.points.append(Point(dh4[0,3], dh4[1,3], dh4[2,3]))
	dh5 = dh4 * self.dh_matrix(-angles[4], 0.2175, a[4], alpha[4])
	arr.points.append(Point(dh5[0,3], dh5[1,3], dh5[2,3]))
	
	
        return arr



if __name__ == "__main__":
    rospy.init_node('problem1')
    fk = YouBotFK()
    rospy.spin()
