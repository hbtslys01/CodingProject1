#!/usr/bin/env python

import rospy
import numpy as np
from math import sqrt, atan2, pi, radians, sin, cos, atan
from p3.msg import JointAngles
from p3.srv import Problem3a as IKService
from p3.srv import Problem2 as VKService
from p3.srv import Problem1 as FKService
from functools import partial
from std_msgs.msg import Float64
from geometry_msgs.msg import Point
from geometry_msgs.msg import Pose
from std_msgs.msg import Float64MultiArray
from random import uniform
thre = 0.05

b = 10
class IK:

	def __init__(self):
		self.ang = JointAngles()
		self.subscriber1 = rospy.Subscriber('p3/effector_position', Point, self.callback)
		self.limits = [radians(169), radians(90), radians(131),radians(102), radians(90)]
		
		

		try:
			self.fk1 = rospy.ServiceProxy('fk', FKService )
		except rospy.ServiceException as ex:
			rospy.logerr('Exception: {}'.format(ex))
			rospy.signal_shutdown("Couldn't connect to fk")
		rospy.wait_for_service('vk')
		try:
			self.vk1 = rospy.ServiceProxy('vk', VKService )
		except rospy.ServiceException as ex:
			rospy.logerr('Exception: {}'.format(ex))
			rospy.signal_shutdown("Couldn't connect to vk")
		# Initialize service called 'ik'
		rospy.Service('ik', IKService, self.callback)
		

	def callback(self, data):
		global thre,b
		pos1 = data.position
		pos = [pos1.x,pos1.y,pos1.z]
		i = 0
		while 1 :
			i = i + 1
			temp = self.ang
			temp2 = self.fk1(temp)
			poscal1 = temp2.points.points[4]
			poscal = [poscal1.x,poscal1.y,poscal1.z]
			e = b * np.subtract(pos,poscal)
			if np.linalg.norm(e) < thre :
				return self.ang
			temp1 = self.vk1(temp)
			jact = np.transpose(np.reshape(temp1.jac.data,(3,5)))
			delang = jact.dot(e)
			self.ang.angles = np.add(self.ang.angles,delang)
			if i > 200:
				self.ang.angles[:] = [uniform(-self.limits[k],self.limits[k]) for k in range(5)]
				i = 0
			for j in range(5):
				if abs(self.ang.angles[j]) > self.limits[j] :
					self.ang.angles[:] = [uniform(-self.limits[k],self.limits[k]) for k in range(5)]
					i = 0
			
		
if __name__ == "__main__":
	rospy.init_node('ik_service')
	ik = IK()
	rospy.spin()
