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
import numpy.linalg as li
from p4.msg import PointArray
class PathPlanner:

    def __init__(self):
        rospy.init_node('problem2a')
        rospy.wait_for_service('/compute_cost')
	self.comcost = rospy.ServiceProxy('/compute_cost', p4_srv.ComputeCost)
	rospy.Service('problem2a', p4_srv.FindPath, self.callback)
	self.po_publisher =  rospy.Publisher('/vrep/youbot/base/path', PointArray, queue_size=10)
	self.rate = rospy.Rate(10)
	#print("init done")
 
    def callback(self,data):
	#print("enter callback")
	delta = 0.04
	step = 0.03
	start = data.start
	goal = data.goal
	num = data.num_waypoints
	#print(num)
	wavepoints = [0]*num #[Point()]*num
	for i in range(num):
		te = Point()
		te.x = start.x + i*(goal.x - start.x) / (num - 1)
		te.y = start.y + i*(goal.y - start.y) / (num - 1)
		te.z = goal.z
		wavepoints[i] = te #wavepoints.append(te)
	cost = self.comcost(wavepoints).cost
	#error = 10
	descent = 1
	stop = [1] * num
	stop[0] = 0
	stop[-1] = 0
	path = {'path':wavepoints}
	arr = PointArray()
	descentx = [0]*(num-2)
	descenty = [0]*(num-2)
	del_cost = 10
	while abs(del_cost) >0.08:
		for j in range(num-2): #except start&end points
		#while stop[1+j] != 0:
			wavepoints[1+j].x = wavepoints[1+j].x + delta
			descentx[j] = (self.comcost(wavepoints).cost - cost)
			wavepoints[1+j].x = wavepoints[1+j].x - delta
			wavepoints[1+j].y = wavepoints[1+j].y + delta
			descenty[j] = (self.comcost(wavepoints).cost - cost)
			wavepoints[1+j].y = wavepoints[1+j].y - delta
			"""tempx = wavepoints[1+j].x - step * descentx
			tempy = wavepoints[1+j].y - step * descenty
			if abs(tempx - wavepoints[1+j].x)<0.05 and abs(tempy - wavepoints[1+j].y)<0.05:
				#li.norm([tempx - wavepoints[1+j].x,tempy - wavepoints[1+j].y]) < 0.05:
				stop[1+j] = 0
				#print(j, "is done!")
			else:
				stop[1+j] = 1"""
			wavepoints[j+1].x = wavepoints[1+j].x - step * descentx[j]
			wavepoints[j+1].y = wavepoints[1+j].y - step * descenty[j]
		del_cost = self.comcost(wavepoints).cost - cost
		#print(del_cost)
		cost = self.comcost(wavepoints).cost
		#print(wavepoints)
		#print("descent is x: ", descentx , " y: " , descenty)
		#print("current point ",  wavepoints[j+1])
	#print("---------------------------------------------------------------------")
	for k in range(num):
		arr.points.append(wavepoints[k])
	self.po_publisher.publish(arr)
	return path#wavepoints
if __name__ == '__main__':
    path_planner = PathPlanner()
    rospy.spin()
