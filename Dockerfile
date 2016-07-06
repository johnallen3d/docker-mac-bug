FROM ubuntu:xenial

RUN apt-get update && apt-get install -y inotify-tools

COPY entry.sh /usr/local/bin/

WORKDIR /var/www

CMD ["entry.sh"]
