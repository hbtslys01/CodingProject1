execute_process(COMMAND "/home/cs4750/catkin_ws/build/p3/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/cs4750/catkin_ws/build/p3/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
