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

echo_and_run cd "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/rosserial_python"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/install/lib/python2.7/dist-packages:/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/build" \
    "/usr/bin/python" \
    "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/src/rosserial_python/setup.py" \
    build --build-base "/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/build/rosserial_python" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/install" --install-scripts="/home/aubailly/Desktop/Projet_Polagraphe/ROS_Project/install/bin"