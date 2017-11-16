#!/bin/bash

case "$1" in
start)  echo "[springapp-manager] starting springapp"
        java -jar "{{ app_home }}"
        echo "[springapp-manager] waiting springapp to warm up (max: {{ app_start_wait }} seconds)"
        while true; do
            [[ "200" = "$(curl --silent --write-out %{http_code} --output /dev/null http://localhost:{{ app_http_port }})" ]] && break
            [[ "${SECONDS}" -ge "${end}" ]] && exit 1
            sleep "{{ app_start_wait }}"
        done
        echo "[springapp-manager] springapp started"
        ;;
stop)   echo "[springapp-manager] stopping springapp..."
        kill
        echo "[springapp-manager] springapp stopped"
        ;;
restart) echo "[springapp-manager] restarting springapp..."
        service springapp stop
        service springapp start
        echo "[springapp-manager] springapp restarted"
        ;;
reload|force-reload) echo "[springapp-manager] Not yet implemented"
        ;;
*)      echo "Usage: springapp.sh {start|stop|restart|reload|force-reload}"
        exit 2
        ;;
esac
exit 0
