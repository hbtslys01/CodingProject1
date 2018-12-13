#!/usr/bin/env python2
# coding=utf8
import rospy
import random
import numpy as np
import time
import math
import std_msgs.msg as std_msgs
import std_srvs.srv as std_srvs
from geometry_msgs.msg import Twist,Pose,Quaternion,Point
import p4.msg as p4_msg
import p4.srv as p4_srv
from tf.transformations import *

class WaypointFollower:

    def __init__(self):
        rospy.init_node('problem2b')
	rospy.wait_for_service('/closest_point_path')
	self.closestpoint = rospy.ServiceProxy('/closest_point_path', p4_srv.ClosestPointPath )
	self.alongpath = rospy.ServiceProxy('/interpolate_path', p4_srv.InterpolatePath )
	self.vel_publisher = rospy.Publisher('/vrep/youbot/base/cmd_vel', Twist, queue_size=10)
	self.rate = rospy.Rate(1)
        rospy.Service('problem2b', p4_srv.FollowPath, self.callback)
  
    def callback(self, data):
	#print("enter callback")
	#print("path is : ",data.path)
	num_segments = 20
	vx = 2.
	times = 1
	points = len(data.path)
	pose = rospy.wait_for_message('/vrep/youbot/base/pose',Pose)
	pos = pose.position #current position
	pub = Twist()
	original_x = np.matrix([[1],[0],[0],[1]]) # global x
	original_y = np.matrix([[0],[1],[0],[1]]) # global y
	total_path_distance = self.closestpoint(data.path[-1],data.path).path_position.data
	if total_path_distance < 0.5:
		num_segments = 5
	elif total_path_distance < 0.8:
		num_segments = 8
	elif total_path_distance < 1.:
		num_segments = 10
	while np.linalg.norm([data.path[-1].x - pos.x,data.path[-1].y - pos.y]) > 0.4: # and abs(data.path[-1].y - pos.y) > 0.1:
	 	pose = rospy.wait_for_message('/vrep/youbot/base/pose',Pose)
		pos = pose.position #current position
		ori = pose.orientation #current orientation in quaternion
		orilist = [ori.x,ori.y,ori.z,ori.w]
		#print(ori)
		#path_distance = self.closestpoint(pos,data.path).path_position.data #use .data to get folat32 value
		
		#print(total_path_distance) 
		tem=std_msgs.Float32(times*total_path_distance/num_segments)
		"""if path_distance + 0.1 > total_path_distance:
			tem = std_msgs.Float32(path_distance + 0.1)
		else:
			tem = std_msgs.Float32(total_path_distance)"""
		goal = self.alongpath(data.path, tem).point #goal(point) of each iteration
		rot = quaternion_matrix(orilist)
		#print("path is : ",data.path)
		#print("goal: ",goal)
		ori_vector_x = (rot * original_x)[0:2] # current orientation(x) in vector
		ori_vector_y = (rot * original_y)[0:2] # current orientation(y) in vector
		goal_vector = np.matrix([goal.x - pos.x, goal.y - pos.y]) # vector oh in global frame
		x_h_b = float(goal_vector * ori_vector_x)
		y_h_b = float(goal_vector * ori_vector_y)
		k = -2.*y_h_b/(np.square(y_h_b) + np.square(x_h_b))
		#print("kerv is: ",k)
		angular = k * vx 
		pub.linear.x = vx
		pub.angular.z = angular
		#print("velo is : ", pub)
		if times <num_segments:
			times += 1
		self.vel_publisher.publish(pub)
		self.rate.sleep()
		pose = rospy.wait_for_message('/vrep/youbot/base/pose',Pose)
		pos = pose.position #current position
	
	pub.linear.x,pub.linear.y,pub.linear.z, = 0,0,0
	pub.angular.z = 0
	self.vel_publisher.publish(pub)
	self.rate.sleep()
	return []
if __name__ == '__main__':
    waypoint_follower = WaypointFollower()
    rospy.spin()
