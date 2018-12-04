# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "polagraphe: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(polagraphe_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv" NAME_WE)
add_custom_target(_polagraphe_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polagraphe" "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv" ""
)

get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv" NAME_WE)
add_custom_target(_polagraphe_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polagraphe" "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polagraphe
)
_generate_srv_cpp(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polagraphe
)

### Generating Module File
_generate_module_cpp(polagraphe
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polagraphe
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(polagraphe_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(polagraphe_generate_messages polagraphe_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_cpp _polagraphe_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_cpp _polagraphe_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polagraphe_gencpp)
add_dependencies(polagraphe_gencpp polagraphe_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polagraphe_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polagraphe
)
_generate_srv_eus(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polagraphe
)

### Generating Module File
_generate_module_eus(polagraphe
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polagraphe
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(polagraphe_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(polagraphe_generate_messages polagraphe_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_eus _polagraphe_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_eus _polagraphe_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polagraphe_geneus)
add_dependencies(polagraphe_geneus polagraphe_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polagraphe_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polagraphe
)
_generate_srv_lisp(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polagraphe
)

### Generating Module File
_generate_module_lisp(polagraphe
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polagraphe
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(polagraphe_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(polagraphe_generate_messages polagraphe_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_lisp _polagraphe_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_lisp _polagraphe_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polagraphe_genlisp)
add_dependencies(polagraphe_genlisp polagraphe_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polagraphe_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polagraphe
)
_generate_srv_nodejs(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polagraphe
)

### Generating Module File
_generate_module_nodejs(polagraphe
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polagraphe
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(polagraphe_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(polagraphe_generate_messages polagraphe_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_nodejs _polagraphe_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_nodejs _polagraphe_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polagraphe_gennodejs)
add_dependencies(polagraphe_gennodejs polagraphe_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polagraphe_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polagraphe
)
_generate_srv_py(polagraphe
  "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polagraphe
)

### Generating Module File
_generate_module_py(polagraphe
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polagraphe
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(polagraphe_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(polagraphe_generate_messages polagraphe_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Coordonee.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_py _polagraphe_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/polagraphe/srv/Turn.srv" NAME_WE)
add_dependencies(polagraphe_generate_messages_py _polagraphe_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polagraphe_genpy)
add_dependencies(polagraphe_genpy polagraphe_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polagraphe_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polagraphe)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polagraphe
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(polagraphe_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polagraphe)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polagraphe
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(polagraphe_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polagraphe)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polagraphe
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(polagraphe_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polagraphe)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polagraphe
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(polagraphe_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polagraphe)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polagraphe\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polagraphe
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(polagraphe_generate_messages_py std_msgs_generate_messages_py)
endif()
