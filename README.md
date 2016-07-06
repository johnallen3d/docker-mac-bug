# docker-mac-bug

This reproduces an inotify bug in docker for mac beta.

Run test.sh. It will output the containers logs. 
You should see inotify events for both /var/www/app/test.txt and /var/www/other/testother.txt.

E.g.:

```
app_1  | starting inotifywait
app_1  | Setting up watches.
app_1  | Watches established.
app_1  | starting inotifywait
app_1  | Setting up watches.
app_1  | Watches established.
app_1  | /var/www/app/test.txt OPEN 
app_1  | /var/www/app/test.txt ATTRIB 
app_1  | /var/www/app/test.txt CLOSE_WRITE,CLOSE 
app_1  | /var/www/other/testother.txt OPEN 
app_1  | /var/www/other/testother.txt ATTRIB 
app_1  | /var/www/other/testother.txt CLOSE_WRITE,CLOSE 
```
