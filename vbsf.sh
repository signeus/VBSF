#!/bin/bash
# chkconfig: 2345 20 80
# description: Init or stop the mount of Virtual Box System file

# Source function library.
. /etc/init.d/functions

start() {
    echo "Starting VBSF."
    mount -t vboxsf torrent /media/windows
}

stop() {
    echo "Stopping VBSF."
    umount vboxsf torrent /media/windows
}

case "$1" in 
    start)
       start
       ;;
    stop)
       stop
       ;;
    restart)
       stop
       start
       ;;
    status)
       echo "This script doesnt have a Status command"
       ;;
    *)
       echo "Usage: $0 {start|stop|status|restart}"
esac

exit 0 