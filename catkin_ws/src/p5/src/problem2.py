#!/usr/bin/env python

import math
import rospy
import numpy as np
from p5.srv import ComputeEntropy, ComputeEntropyResponse

class Problem2:

    def __init__(self):
        rospy.init_node('problem2')
        # TODO: FILL IN HERE -- INITIALIZE SERVICE FOR PROBLEM 2
	rospy.Service('problem2', ComputeEntropy, self.compute_entropy)
        pass

    def compute_entropy(self, request):
	hp = 0
	distribution = request.distribution
        # TODO: FILL IN HERE -- CALCULATE ENTROPY AND RETURN INSIDE COMPUTEENTROPYRESPONSE()
	for i in range(5):
		hp = hp - distribution[i] * np.log2(distribution[i])
        return hp

if __name__ == '__main__':
    Problem2()
    rospy.spin()
