# docker-mac-bug

This reproduces an inotify bug in docker for mac beta.

Run test.sh. It will output the containers logs. 
You should see inotify events for /var/www/app/test.txt, /var/www/other/testother.txt and /etc/go-cron/testother.txt

E.g.:

```
app_1  | starting inotifywait
app_1  | Setting up watches.
app_1  | Watches established.
app_1  | /var/www/app/ MODIFY test.txt
app_1  | /etc/go-cron/ MODIFY test.txt
app_1  | /var/www/app/test/ MODIFY test.txt
```
