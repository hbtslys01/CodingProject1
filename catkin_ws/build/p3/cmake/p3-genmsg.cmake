# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "p3: 2 messages, 4 services")

set(MSG_I_FLAGS "-Ip3:/home/cs4750/catkin_ws/src/p3/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(p3_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv" NAME_WE)
add_custom_target(_p3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "p3" "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv" "p3/JointAngles:std_msgs/MultiArrayLayout:std_msgs/Float64MultiArray:std_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv" NAME_WE)
add_custom_target(_p3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "p3" "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv" ""
)

get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg" NAME_WE)
add_custom_target(_p3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "p3" "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv" NAME_WE)
add_custom_target(_p3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "p3" "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv" "p3/JointAngles:p3/PointArray:geometry_msgs/Point"
)

get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg" NAME_WE)
add_custom_target(_p3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "p3" "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg" ""
)

get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv" NAME_WE)
add_custom_target(_p3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "p3" "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv" "p3/JointAngles:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(p3
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p3
)
_generate_msg_cpp(p3
  "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p3
)

### Generating Services
_generate_srv_cpp(p3
  "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p3
)
_generate_srv_cpp(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p3
)
_generate_srv_cpp(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p3
)
_generate_srv_cpp(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p3
)

### Generating Module File
_generate_module_cpp(p3
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p3
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(p3_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(p3_generate_messages p3_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv" NAME_WE)
add_dependencies(p3_generate_messages_cpp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv" NAME_WE)
add_dependencies(p3_generate_messages_cpp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg" NAME_WE)
add_dependencies(p3_generate_messages_cpp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv" NAME_WE)
add_dependencies(p3_generate_messages_cpp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg" NAME_WE)
add_dependencies(p3_generate_messages_cpp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv" NAME_WE)
add_dependencies(p3_generate_messages_cpp _p3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p3_gencpp)
add_dependencies(p3_gencpp p3_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p3_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(p3
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p3
)
_generate_msg_eus(p3
  "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p3
)

### Generating Services
_generate_srv_eus(p3
  "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p3
)
_generate_srv_eus(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p3
)
_generate_srv_eus(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p3
)
_generate_srv_eus(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p3
)

### Generating Module File
_generate_module_eus(p3
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p3
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(p3_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(p3_generate_messages p3_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv" NAME_WE)
add_dependencies(p3_generate_messages_eus _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv" NAME_WE)
add_dependencies(p3_generate_messages_eus _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg" NAME_WE)
add_dependencies(p3_generate_messages_eus _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv" NAME_WE)
add_dependencies(p3_generate_messages_eus _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg" NAME_WE)
add_dependencies(p3_generate_messages_eus _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv" NAME_WE)
add_dependencies(p3_generate_messages_eus _p3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p3_geneus)
add_dependencies(p3_geneus p3_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p3_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(p3
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p3
)
_generate_msg_lisp(p3
  "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p3
)

### Generating Services
_generate_srv_lisp(p3
  "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p3
)
_generate_srv_lisp(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p3
)
_generate_srv_lisp(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p3
)
_generate_srv_lisp(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p3
)

### Generating Module File
_generate_module_lisp(p3
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p3
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(p3_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(p3_generate_messages p3_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv" NAME_WE)
add_dependencies(p3_generate_messages_lisp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv" NAME_WE)
add_dependencies(p3_generate_messages_lisp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg" NAME_WE)
add_dependencies(p3_generate_messages_lisp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv" NAME_WE)
add_dependencies(p3_generate_messages_lisp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg" NAME_WE)
add_dependencies(p3_generate_messages_lisp _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv" NAME_WE)
add_dependencies(p3_generate_messages_lisp _p3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p3_genlisp)
add_dependencies(p3_genlisp p3_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p3_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(p3
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p3
)
_generate_msg_nodejs(p3
  "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p3
)

### Generating Services
_generate_srv_nodejs(p3
  "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p3
)
_generate_srv_nodejs(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p3
)
_generate_srv_nodejs(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p3
)
_generate_srv_nodejs(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p3
)

### Generating Module File
_generate_module_nodejs(p3
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p3
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(p3_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(p3_generate_messages p3_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv" NAME_WE)
add_dependencies(p3_generate_messages_nodejs _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv" NAME_WE)
add_dependencies(p3_generate_messages_nodejs _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg" NAME_WE)
add_dependencies(p3_generate_messages_nodejs _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv" NAME_WE)
add_dependencies(p3_generate_messages_nodejs _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg" NAME_WE)
add_dependencies(p3_generate_messages_nodejs _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv" NAME_WE)
add_dependencies(p3_generate_messages_nodejs _p3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p3_gennodejs)
add_dependencies(p3_gennodejs p3_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p3_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(p3
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3
)
_generate_msg_py(p3
  "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3
)

### Generating Services
_generate_srv_py(p3
  "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3
)
_generate_srv_py(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3
)
_generate_srv_py(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3
)
_generate_srv_py(p3
  "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg;/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3
)

### Generating Module File
_generate_module_py(p3
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(p3_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(p3_generate_messages p3_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem2.srv" NAME_WE)
add_dependencies(p3_generate_messages_py _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/JacString.srv" NAME_WE)
add_dependencies(p3_generate_messages_py _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/PointArray.msg" NAME_WE)
add_dependencies(p3_generate_messages_py _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem1.srv" NAME_WE)
add_dependencies(p3_generate_messages_py _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/msg/JointAngles.msg" NAME_WE)
add_dependencies(p3_generate_messages_py _p3_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p3/srv/Problem3a.srv" NAME_WE)
add_dependencies(p3_generate_messages_py _p3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p3_genpy)
add_dependencies(p3_genpy p3_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p3_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p3
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(p3_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(p3_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p3
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(p3_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(p3_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p3
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(p3_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(p3_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p3
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(p3_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(p3_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p3/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(p3_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(p3_generate_messages_py geometry_msgs_generate_messages_py)
endif()
