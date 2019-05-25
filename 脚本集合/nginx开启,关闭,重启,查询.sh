#!/bin/bash
case $1 in
start)
     /usr/local/nginx/sbin/nginx ;;
stop)
     /usr/local/nginx/sbin/nginx -s stop ;;
restart)
     /usr/local/nginx/sbin/nginx -s stop
     /usr/local/nginx/sbin/nginx ;;
status)
     netstat -ntulp | grep -q nginx
     [ $? -eq 0 ] &&  echo "启动了"   || echo  "没启动" ;;
*)
    echo "start|stop|restart|status";;
esac

