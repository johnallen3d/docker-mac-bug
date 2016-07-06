#!/bin/sh

echo "starting inotifywait"

# while true; do
#     inotifywatch -t 1 /var/www/app/test.txt /var/www/other/testother.txt
# done

trap 'killall -9 inotifywait' QUIT EXIT TERM

inotifywait -m /var/www/app/test.txt /var/www/other/testother.txt
