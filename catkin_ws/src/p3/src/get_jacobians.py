#!/bin/env python
import numpy as np
import rospy
from std_msgs.msg import Float64
from pickle import dump

from p3.srv import JacString
from p3.msg import JointAngles


def run_node():
  rospy.init_node('jacobian_grabber')
  get_jacobian = rospy.ServiceProxy('vrep/getjac', JacString)
  arm_pubs = [
      rospy.Publisher('/vrep/youbot/arm/joint{i}/angle', Float64, queue_size=5)
      for i in range(1, 6)
  ]

  jacobians = []
  for _ in range(5):
    config = rospy.wait_for_message('p3/arm_config', JointAngles)
    for i, ang in enumerate(config.angles):
      arm_pubs[i].publish(ang)

    jac_string = get_jacobian().jacobian
    rows = jac_string.split('\\')
    jac = [list(map(float, row.strip().split(' '))) for row in rows[:-1]]
    jacobians.append((config, np.matrix(jac)))

  print(jacobians)
  with open('jacobians.pickle', 'wb') as jacfile:
    dump(jacobians, jacfile)


if __name__ == '__main__':
  run_node()
