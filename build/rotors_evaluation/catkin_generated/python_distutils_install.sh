#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/sid20-04/catkin_ws/src/CrazyS/rotors_evaluation"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/sid20-04/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/sid20-04/catkin_ws/install/lib/python3/dist-packages:/home/sid20-04/catkin_ws/build/rotors_evaluation/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/sid20-04/catkin_ws/build/rotors_evaluation" \
    "/usr/bin/python3" \
    "/home/sid20-04/catkin_ws/src/CrazyS/rotors_evaluation/setup.py" \
     \
    build --build-base "/home/sid20-04/catkin_ws/build/rotors_evaluation" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/sid20-04/catkin_ws/install" --install-scripts="/home/sid20-04/catkin_ws/install/bin"
