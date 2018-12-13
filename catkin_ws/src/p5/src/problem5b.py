#!/usr/bin/env python

import rospy
from p5.srv import ModelSenseAction, ModelSenseActionResponse

class Problem5b:

    def __init__(self):
        rospy.init_node('problem5b')
        # TODO: FILL IN HERE -- INITIALIZE SERVICE FOR PROBLEM 5b
        rospy.Service('problem5b', ModelSenseAction, self.model_sense_action)

    def model_sense_action(self, request):
        # TODO: FILL IN HERE -- CALCULATE PROBABILITY DISTRIBUTION, RETURN IN MODELSENSEACTIONRESPONSE()
        state = request.state
	prior = list(state.distribution)
	max_pos = prior.index(max(prior))+1 #the block id with max probability
	post = prior 
	if state.location == max_pos:
		post[max_pos-1] *= 0.2
		post = self.normalization(post)
	elif state.location != 0:
		post[max_pos-1] *= 0.5
		post = self.normalization(post)
	distribution = {'distribution':tuple(post)}
        return distribution #ModelSenseActionResponse([])
    def normalization(self,li):
	mod = sum(li)
	for i in range(len(li)):
		li[i] = (1. * li[i])/mod
	return li

if __name__ == '__main__':
    Problem5b()
    rospy.spin()
