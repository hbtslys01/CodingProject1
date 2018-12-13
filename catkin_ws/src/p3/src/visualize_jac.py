#!/usr/bin/env python

import rospy
import numpy as np
from math import radians
from random import uniform
import matplotlib.pyplot as plt
import matplotlib.colors as colors
from p3.srv import Problem2 as JacService
from p3.msg import JointAngles


plt.ion()


class Visualization(object):

	def __init__(self):
		# init plot
		self.fig, self.ax = plt.subplots()
		self.mat = self.ax.matshow(np.zeros((0,0)), norm=colors.Normalize(vmin=0, vmax=1), cmap='RdYlGn_r')
		self.fig.colorbar(self.mat)
		self.ypos = [1.0, 2.0, 3.0, 4.0, 5.0]

		# connect to jacobian services (solution and student service)
		rospy.wait_for_service('/vk_solution')
		rospy.wait_for_service('/vk')
		try:
			self.jac_sol = rospy.ServiceProxy('/vk_solution', JacService)
			self.jac = rospy.ServiceProxy('/vk', JacService)
		except rospy.ServiceException as e:
			rospy.logerr('Exception: {}'.format(e))
			rospy.signal_shutdown('Could not connect to jacobian services')


	def update(self):
		# get new config and pass to compute diff
		config = self.gen_config()
		diff = self.get_jac_diff(config)
		print('diff = {}'.format(diff))

		# update visualization
		self.ax.cla()
		self.ax.set_title('Visualization of Jacobian Correctness')
		#title = 'Visualization of Jacobian Correctness'
		#plt.text(0.5, 1.20, title, horizontalalignment='center', fontsize=10, transform = self.ax.transAxes) 
		self.ax.set_xticks(self.ypos)
		self.ax.matshow(diff, norm=colors.Normalize(vmin=0, vmax=1), cmap='RdYlGn_r')
		#self.fig.colorbar(self.mat)
		plt.show()
		self.fig.canvas.flush_events()


	def get_jac_diff(self, config):
		# calculate diff between solution jacobian and jacobian provided by student's service
		jac_sol = self.jac_sol(config).jac
		jac = self.jac(config).jac

		# restore shape of jacobian
		jac_sol = np.asarray(jac_sol.data).reshape((3,5))
		jac = np.asarray(jac.data).reshape((3,5))

		#jac = np.random.rand(3,5)
		#jac[0,0] = jac_sol[0,0]
		#jac[0,1] = jac_sol[0,1]
		#jac[0,2] = jac_sol[0,2]
		#jac[0,3] = jac_sol[0,3]
		#jac[0,4] = jac_sol[0,4]
		#jac[1,0] = jac_sol[1,0]
		#jac[1,1] = jac_sol[1,1]
		#jac[1,2] = jac_sol[1,2]
		#jac[1,3] = jac_sol[1,3]
		#jac[1,4] = jac_sol[1,4]


		return np.absolute(jac_sol - jac)



	def gen_config(self):
		# Values taken from V-REP joint limits
		config = [uniform(radians(-169), radians(169)),
				uniform(radians(-90), radians(75)),
				uniform(radians(-131), radians(131)),
				uniform(radians(-102), radians(102)),
				uniform(radians(-90), radians(90))]

		return JointAngles(config)





if __name__ == '__main__':
	rospy.init_node('visualizer', anonymous=True)

	viz = Visualization()

	while not rospy.is_shutdown():
		viz.update()
		rospy.sleep(5)
