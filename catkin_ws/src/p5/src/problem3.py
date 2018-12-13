#!/usr/bin/env python

import rospy
from p5.srv import ChooseAction, ChooseActionResponse, GetTransitions
from p5.msg import Action, ActionOption

class Problem3:

    def __init__(self):
        rospy.init_node('problem3')
        self.values = {}
	self.gama = 0.9
	self.policytimes = 25
	self.valuetimes = 15
	self.a = Action(Action.STOP)
	print("init of p3")
	rospy.wait_for_service('/get_transitions')
	try:
		self.gt = rospy.ServiceProxy('/get_transitions', GetTransitions)
	except rospy.ServiceException as ex:
		rospy.logerr('Exception: {}'.format(ex))
		rospy.signal_shutdown("Couldn't find gt")
	
	print("finish p3 init")
        # TODO: FILL IN HERE -- INITIALIZE SERVICE FOR PROBLEM 3
        rospy.Service('problem3', ChooseAction, self.choose_action)

    # returns an action (policy) for the requested state
    def choose_action(self, request):
        action = self.get_policy(request.state)
        return ChooseActionResponse(action)


    def get_policy(self, state, curr_iter=0):
        # TODO: FILL IN HERE -- GET VALID TRANSITIONS AND COMPUTE A POLICY
	ao = self.gt(state).actions
	#print("actions of policy are ", ao)
	pis = 0
	temp = 0
	#a = Action(Action.STOP)
	#self.policytimes = max(self.policytimes,curr_iter)
	if self.policytimes > 0:
		self.policytimes -= 1
		print("policytimes is ", self.policytimes)
		for i in range(len(ao)):
			eff = ao[i].effects
			for j in range(len(eff)):
				t = self.gama*self.value_iteration(eff[j].next_state)
				temp += eff[j].probability*(eff[j].reward+t)
			if temp > pis:
				self.a = ao[i].action
				pis = temp
	print("action is ", self.a)
	#if self.a == Action(Action.STOP) and state.location == 0:
	#	self.a = Action(Action.MOVE1)
        return self.a #Action(Action.STOP) # returns the action for this state


    def value_iteration(self, state, curr_iter=3):
        # TODO: FILL IN HERE -- COMPUTE VALUE FUNCTION FOR THIS STATE
	#self.valuetimes = max(self.valuetimes, curr_iter)
	if self.valuetimes > 0:
		self.valuetimes -= 1
		#print("valuetimes is ", self.valuetimes)
		if self.get_stored_value(state) is None:
			act = self.get_policy(state)
			ao = self.gt(state).actions
			pis = ao[0]
			for i in range(len(ao)):
				if ao[i].action.name == act.name:
					pis = ao[i]
					break
			v = 0.
			eff = pis.effects
			for j in range(len(eff)):
				if self.get_stored_value(eff[j].next_state) is None:
					value = self.value_iteration(eff[j].next_state)
					v += eff[j].probability*(eff[j].reward+self.gama*value)
					self.set_stored_value(eff[j].next_state, value)
				else:
					v += eff[j].probability*(eff[j].reward+self.gama*self.get_stored_value(eff[j].next_state))
			self.set_stored_value(state, v)
			return v
		return self.get_stored_value(state) # returns the value function at this state
	#print("retrun from value")
	return 0

    # returns a key corresponding to the state
    # can be None if no entry is found
    def get_stored_value(self, state):
        key = self.get_key_from_state(state)
        return self.values.get(key) 


    def set_stored_value(self, state, value):
        key = self.get_key_from_state(state)
        self.values[key] = value


    def get_key_from_state(self, state):
        distribution = []
        for i in range(len(state.distribution)):
            distribution.append(round(state.distribution[i], 1))
        key = (state.location, tuple(distribution))
        return key


if __name__ == '__main__':
    Problem3()
    rospy.spin()
