execute_process(COMMAND "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/build/rosserial_arduino/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/build/rosserial_arduino/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
