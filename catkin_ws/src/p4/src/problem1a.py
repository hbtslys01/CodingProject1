#!/usr/bin/env python2
# coding=utf8

import rospy
import random
import numpy
import time
import math
import std_msgs.msg as std_msgs
import std_srvs.srv as std_srvs
from geometry_msgs.msg import Twist,Point
import p4.msg as p4_msg
import p4.srv as p4_srv
from cvxopt.lapack import gels
from cvxopt import matrix,spmatrix,sparse,solvers
from p4.srv import PositionBucket as pb

class WorkspaceOptimizer:
	
	def __init__(self):
		rospy.init_node('problem1a')
		rospy.wait_for_service('/vrep/block1/pos/get')
		self.b1 = rospy.ServiceProxy('/vrep/block1/pos/get', p4_srv.GetPosition)
		
		rospy.wait_for_service('/vrep/block2/pos/get')
		self.b2 = rospy.ServiceProxy('/vrep/block2/pos/get', p4_srv.GetPosition )
		rospy.wait_for_service('/vrep/block3/pos/get')
		self.b3 = rospy.ServiceProxy('/vrep/block3/pos/get', p4_srv.GetPosition)
		rospy.wait_for_service('/vrep/block4/pos/get')
		self.b4 = rospy.ServiceProxy('/vrep/block4/pos/get', p4_srv.GetPosition )
		rospy.wait_for_service('/vrep/block5/pos/get')
		self.b5 = rospy.ServiceProxy('/vrep/block5/pos/get', p4_srv.GetPosition )
		rospy.wait_for_service('/vrep/bucket/pos/set')
		self.s = rospy.ServiceProxy('/vrep/bucket/pos/set', p4_srv.SetPosition )
		#print(self.b1().pos.x)
		# Initialize service
		rospy.Service('problem1a', pb, self.callback)
		#print("ini done")

	def callback(self,request):
		#print("enter callback")
		p = Point()
		b1,b2,b3,b4,b5 = self.b1(),self.b2(),self.b3(),self.b4(),self.b5()
		"""b=matrix([b1.pos.x,b1.pos.y,b2.pos.x,b2.pos.y,b3.pos.x,b3.pos.y,
			b4.pos.x,b4.pos.y,b5.pos.x,b5.pos.y])
		a = spmatrix(1.0,range(2),range(2))
		A = sparse([a,a,a])
		x = b
		gels(matrix(A),x)
		p.x,p.y,p.z = float(x[0,0]),float(x[1,0]),float(x[2,0])"""
		P = matrix([[10.0,0.0],[0.0,10.0]])
		q = matrix([-2*(b1.pos.x+b2.pos.x+b3.pos.x+b4.pos.x+b5.pos.x),-2*(b1.pos.y+b2.pos.y+b3.pos.y+b4.pos.y+b5.pos.y)])
		sol = solvers.qp(P,q)
		p.x,p.y,p.z = sol['x'][0],sol['x'][1],b1.pos.z
		#print(p)
		self.s(p)
		return []

def callb(request):
	print("enter callb")
	
if __name__ == '__main__':
    workspace_optimizer = WorkspaceOptimizer()
    rospy.spin()
