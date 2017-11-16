#!/bin/bash

case "$1" in
start)  echo "[zookeeper-manager] starting zookeeper"
        {{ kafka_home }}/bin/zookeeper-server-start.sh {{ kafka_home }}/config/zookeeper.properties > /dev/null &
        echo "[zookeeper-manager] zookeeper started"
        ;;
stop)   echo "[zookeeper-manager] stopping zookeeper..."
        {{ kafka_home }}/bin/zookeeper-server-stop.sh
        echo "[zookeeper-manager] zookeeper stopped"
        ;;
restart) echo "[zookeeper-manager] restarting zookeeper..."
        service zookeeper stop
        service zookeeper start
        echo "[zookeeper-manager] zookeeper restarted"
        ;;
reload|force-reload) echo "[zookeeper-manager] Not yet implemented"
        ;;
*)      echo "Usage: zookeeper.sh {start|stop|restart|reload|force-reload}"
        exit 2
        ;;
esac
exit 0
