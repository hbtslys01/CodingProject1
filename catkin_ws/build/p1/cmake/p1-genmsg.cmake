# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "p1: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iturtlesim:/opt/ros/melodic/share/turtlesim/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(p1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv" NAME_WE)
add_custom_target(_p1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "p1" "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(p1
  "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p1
)

### Generating Module File
_generate_module_cpp(p1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(p1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(p1_generate_messages p1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv" NAME_WE)
add_dependencies(p1_generate_messages_cpp _p1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p1_gencpp)
add_dependencies(p1_gencpp p1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(p1
  "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p1
)

### Generating Module File
_generate_module_eus(p1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(p1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(p1_generate_messages p1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv" NAME_WE)
add_dependencies(p1_generate_messages_eus _p1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p1_geneus)
add_dependencies(p1_geneus p1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(p1
  "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p1
)

### Generating Module File
_generate_module_lisp(p1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(p1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(p1_generate_messages p1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv" NAME_WE)
add_dependencies(p1_generate_messages_lisp _p1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p1_genlisp)
add_dependencies(p1_genlisp p1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(p1
  "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p1
)

### Generating Module File
_generate_module_nodejs(p1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(p1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(p1_generate_messages p1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv" NAME_WE)
add_dependencies(p1_generate_messages_nodejs _p1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p1_gennodejs)
add_dependencies(p1_gennodejs p1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(p1
  "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1
)

### Generating Module File
_generate_module_py(p1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(p1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(p1_generate_messages p1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin_ws/src/p1/srv/Draw.srv" NAME_WE)
add_dependencies(p1_generate_messages_py _p1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p1_genpy)
add_dependencies(p1_genpy p1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(p1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(p1_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET turtlesim_generate_messages_cpp)
  add_dependencies(p1_generate_messages_cpp turtlesim_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/p1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(p1_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(p1_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET turtlesim_generate_messages_eus)
  add_dependencies(p1_generate_messages_eus turtlesim_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(p1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(p1_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET turtlesim_generate_messages_lisp)
  add_dependencies(p1_generate_messages_lisp turtlesim_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/p1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(p1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(p1_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET turtlesim_generate_messages_nodejs)
  add_dependencies(p1_generate_messages_nodejs turtlesim_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(p1_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(p1_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET turtlesim_generate_messages_py)
  add_dependencies(p1_generate_messages_py turtlesim_generate_messages_py)
endif()
