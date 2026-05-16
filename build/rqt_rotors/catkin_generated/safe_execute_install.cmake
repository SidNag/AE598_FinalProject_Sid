execute_process(COMMAND "/home/sid20-04/catkin_ws/build/rqt_rotors/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/sid20-04/catkin_ws/build/rqt_rotors/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
