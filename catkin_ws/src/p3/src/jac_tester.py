#!/usr/bin/env python

import rospy
import numpy as np
from math import radians
from random import uniform
import matplotlib.pyplot as plt
import matplotlib.colors as colors
from p3.srv import Problem2 as JacService
from p3.msg import JointAngles

rospy.init_node("tester")

rospy.wait_for_service('/problem2_solution')

f = rospy.ServiceProxy('/problem2_solution', JacService)

while True:
	config = [uniform(radians(-169), radians(169)),
				uniform(radians(-90), radians(75)),
				uniform(radians(-131), radians(131)),
				uniform(radians(-102), radians(102)),
				uniform(radians(-90), radians(90))]
	print(f(JointAngles(config)))
