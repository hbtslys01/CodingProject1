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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/cs4750/catkin_ws/src/p3"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/cs4750/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/cs4750/catkin_ws/install/lib/python2.7/dist-packages:/home/cs4750/catkin_ws/build/p3/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/cs4750/catkin_ws/build/p3" \
    "/usr/bin/python2" \
    "/home/cs4750/catkin_ws/src/p3/setup.py" \
    build --build-base "/home/cs4750/catkin_ws/build/p3" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/cs4750/catkin_ws/install" --install-scripts="/home/cs4750/catkin_ws/install/bin"
