#!/usr/bin/env python

import rospy
from p5.srv import ChooseAction, LocateBall, CommandRobot, DetectMetal
from p5.msg import Action, ActionEffect, State

class Problem4:

    def __init__(self):
        rospy.init_node('problem4')
	
	print("start p4 init")
	rospy.wait_for_service('/vrep/youbot/detect_metal')
	try:
		self.detectmetal = rospy.ServiceProxy('/vrep/youbot/detect_metal', DetectMetal)
	except rospy.ServiceException as ex:
		rospy.logerr('Exception: {}'.format(ex))
		rospy.signal_shutdown("Couldn't find dm")
	rospy.wait_for_service('/command_robot')
	try:
		self.cr = rospy.ServiceProxy('/command_robot', CommandRobot)
	except rospy.ServiceException as ex:
		rospy.logerr('Exception: {}'.format(ex))
		rospy.signal_shutdown("Couldn't find cr")
	rospy.wait_for_service('problem3')
	try:
		self.p3 = rospy.ServiceProxy('problem3', ChooseAction)
	except rospy.ServiceException as ex:
		rospy.logerr('Exception: {}'.format(ex))
		rospy.signal_shutdown("Couldn't find p3")
	
	
	print("finish p4 init")
        ## TODO: implement the problem here
	rospy.Service('problem4', LocateBall, self.locateball)
    def locateball(self,request):
	state = request.start_state
	action = self.p3(state).next_action
	hasm = False#self.detectmetal(state.location+1).has_metal
	while action.name != 0 and action.name != 1 or hasm is False:
		state = self.cr(state, action).next_state
		action = self.p3(state).next_action
		if state.location == 0:
			hasm = False
		else:
			hasm = self.detectmetal(state.location).has_metal
		
	print("current action is ", action, "current pos is ", state.location)
	return state

if __name__ == '__main__':
    Problem4()
    rospy.spin()
