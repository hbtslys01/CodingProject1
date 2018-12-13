#!/usr/bin/env python2
# coding=utf8
import rospy
import random
import numpy
import time
import math
import std_msgs.msg as std_msgs
import std_srvs.srv as std_srvs
from geometry_msgs.msg import Twist,Pose,Point
import p4.msg as p4_msg
import p4.srv as p4_srv
from p4.srv import PositionBucket as pb
import numpy.linalg as li
from cvxopt import matrix,spmatrix,sparse,solvers
def distance(p1,p2,p3,p4,p5,px):
	return li.norm([px.x-p1.x,px.y-p1.y,px.x-p2.x,px.y-p2.y,px.x-p3.x,px.y-p3.y,px.x-p4.x,px.y-p4.y,px.x-p5.x,px.y-p5.y])
	
class WorkspaceOptimizer:

    def __init__(self):
        rospy.init_node('problem1b')
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
	self.ypose = rospy.wait_for_message('/vrep/youbot/base/pose',Pose)
	# Initialize service
	rospy.Service('problem1b', pb, self.callback)
	#print("ini done")

    def callback(self,request):
	print("enter callback")
	a = self.ypose.position.x
	b = self.ypose.position.y
	p = Point()
	b1,b2,b3,b4,b5 = self.b1(),self.b2(),self.b3(),self.b4(),self.b5()

	P = matrix([[10.0,0.0],[0.0,10.0]])
	q = matrix([-2.*(b1.pos.x+b2.pos.x+b3.pos.x+b4.pos.x+b5.pos.x),-2*(b1.pos.y+b2.pos.y+b3.pos.y+b4.pos.y+b5.pos.y)])
	G = matrix([[1.,1.,-1.,-1.],[1.,-1.,1.,-1.]])
	h = matrix([a+b+1,a-b+1,b-a+1,-a-b+1])
	
	sol = solvers.qp(P,q,G,h)
	p.x,p.y,p.z = sol['x'][0],sol['x'][1],b1.pos.z
	print(p)
	self.s(p)
	return []

if __name__ == '__main__':
    workspace_optimizer = WorkspaceOptimizer()
    rospy.spin()
