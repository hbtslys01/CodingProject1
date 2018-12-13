#!/usr/bin/env python

import math
import rospy
import numpy as np
from p5.srv import DetectMetal, SenseBall, SenseBallResponse

class Problem1():

    def __init__(self):
        rospy.init_node('problem1')
        # TODO: CONNECT TO METAL DETECTOR SERVICE ('/vrep/youbot/detect_metal')
	print("start p1 init")
	rospy.wait_for_service('/vrep/youbot/detect_metal')
	try:
		self.detectmetal = rospy.ServiceProxy('/vrep/youbot/detect_metal', DetectMetal)
	except rospy.ServiceException as ex:
		rospy.logerr('Exception: {}'.format(ex))
		rospy.signal_shutdown("Couldn't find dm")
	print("finish p1 init")
        # TODO: FILL IN HERE -- INITIALIZE SERVICE FOR PROBLEM 1
	rospy.Service('problem1', SenseBall, self.sense_ball)
        pass

    def sense_ball(self, request):
	print("enter callback")
        # TODO: FILL IN HERE -- CALCULATE UPDATED PROBABILITY DISTRIBUTION, RETURN IN SENSEBALLRESPONSE()
	p_b = request.prior
	
	z = [True] * 5
	dis = [0.] * 5
	bel = [0.] * 5
	print("before for loop")
	for i in range(5):
		dm = self.detectmetal(i+1)
		#print("ith block detection: ", dm)
		z[i] = dm.has_metal
		dis[i] = dm.distance
		#print(2)
		if z[i]: #zi=1
			p_zi_bi1_di = (4-np.tanh(3*(dis[i]-1.5)) - np.tanh(3))/4.
			p_zi_bi0_di = 1. - p_zi_bi1_di
			p_zi_di = p_zi_bi1_di * p_b[i] + p_zi_bi0_di * (1. - p_b[i])
			bel[i] = p_zi_bi1_di * p_b[i]/p_zi_di
		else:
			p_zi_bi0_di = (4-np.tanh(3*(dis[i]-1.5)) - np.tanh(3))/4.
			p_zi_bi1_di = 1. - p_zi_bi0_di
			print("false")
			p_zi_di = p_zi_bi1_di * p_b[i] + p_zi_bi0_di * (1. - p_b[i])
			bel[i] = p_zi_bi1_di * p_b[i]/p_zi_di
	mod = sum(bel)
	
	for i in range(5):
		bel[i] = (1. * bel[i])/mod 
	distribution = {'distribution':bel}
	print("return")
        return distribution

if __name__ == "__main__":
    Problem1()
    rospy.spin()
