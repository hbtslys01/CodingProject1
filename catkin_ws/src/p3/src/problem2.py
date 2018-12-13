#!/usr/bin/env python

import rospy
import numpy as np
import math
from p3.msg import JointAngles
from p3.srv import Problem1 as KinService
from p3.srv import Problem2 as JacService
from functools import partial
from std_msgs.msg import Float64MultiArray
from std_msgs.msg import MultiArrayLayout
from std_msgs.msg import MultiArrayDimension
from p3.msg import JointAngles, PointArray
from geometry_msgs.msg import Point
import problem1


class VK:
	
	def __init__(self):
		self.delta = 1e-5
		
		# Initialize service for calculating FK from problem1
		rospy.wait_for_service('fk')
		try:
			self.fk = rospy.ServiceProxy('fk', KinService )
			
	    	except rospy.ServiceException as ex:
			rospy.logerr('Exception: {}'.format(ex))
			rospy.signal_shutdown("Couldn't ")
		
		# Initialize service called 'vk'
		rospy.Service('vk', JacService, self.callback)
	def callback(self, data):
		ang = data.angles
		f0 = self.fk(data.angles).points.points[4]
		Jaco = [0 for j in range(15)]
		for i in range(5):
			temp = list(ang.angles)
			temp[i] = temp[i] + self.delta
			f1 = self.fk(JointAngles(temp)).points.points[4]
			Jaco[i] = (f1.x - f0.x)/self.delta
			Jaco[i+5] = (f1.y - f0.y)/self.delta
			Jaco[i+10] = (f1.z - f0.z)/self.delta
		
		# These dimensions should stay the same
		layout = MultiArrayLayout()
		layout.dim = [MultiArrayDimension('height', 3, 15),
		MultiArrayDimension('width', 5, 5)]

		jac = Float64MultiArray(layout, np.array(Jaco)) # FILL IN: Replace zeros with your result

		return jac



if __name__ == "__main__":
	rospy.init_node('vk_service', anonymous=True)
	vk = VK()
	rospy.spin()
