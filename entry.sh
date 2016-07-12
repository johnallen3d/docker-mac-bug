#!/bin/sh

echo "starting inotifywait"

# while true; do
#     inotifywatch -t 1 /var/www/app/test.txt /var/www/other/testother.txt
# done

pid=0

cleanup() {
    trap '' QUIT EXIT TERM
    echo "Exiting"
    if [ $pid -ne 0 ]; then
        kill $pid
    fi
    exit 0
}

trap cleanup QUIT EXIT TERM

inotifywait -m /var/www/app/ /etc/go-cron /var/www/app/test/ &
pid=$!

wait $pid
