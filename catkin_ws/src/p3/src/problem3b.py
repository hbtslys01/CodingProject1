#!/usr/bin/env python

import rospy
from std_msgs.msg import Float64
from geometry_msgs.msg import Point
from p3.srv import Problem3a as IKService
from p3.msg import JointAngles

class Wave:

	def __init__(self):
		rospy.init_node('p3b', anonymous=True)
		# connect to IK service
		rospy.wait_for_service('ik')
		try:
			# create a handle for calling the draw service
			self.ik1 = rospy.ServiceProxy('ik' , IKService )
		except rospy.ServiceException as ex:
			rospy.logerr('Could not draw turtle! Exception: {}'.format(ex))
			rospy.signal_shutdown("Couldn't find ik!")
		# init publishers for joint angles
		self.ja1_publisher =  rospy.Publisher('/vrep/youbot/arm/joint1/angle', Float64, queue_size=10)
		self.ja2_publisher =  rospy.Publisher('/vrep/youbot/arm/joint2/angle', Float64, queue_size=10)
		self.ja3_publisher =  rospy.Publisher('/vrep/youbot/arm/joint3/angle', Float64, queue_size=10)
		self.ja4_publisher =  rospy.Publisher('/vrep/youbot/arm/joint4/angle', Float64, queue_size=10)
		self.ja5_publisher =  rospy.Publisher('/vrep/youbot/arm/joint5/angle', Float64, queue_size=10)
		self.rate = rospy.Rate(10)
		# subscribe to p3/wave for arm positions
		self.pos_subscriber = rospy.Subscriber('p3/wave', Point, self.swing)
	def swing(self,data):
		ang = self.ik1(data)
		self.ja1_publisher.publish(ang.angles.angles[0])
		self.ja2_publisher.publish(ang.angles.angles[1])
		self.ja3_publisher.publish(ang.angles.angles[2])
		self.ja4_publisher.publish(ang.angles.angles[3])
		self.ja5_publisher.publish(ang.angles.angles[4])

if __name__ == '__main__':
	wave = Wave()
	rospy.spin()

