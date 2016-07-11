# FROM ubuntu:xenial
FROM node:4

RUN apt-get update && apt-get install -y inotify-tools
RUN npm update -g npm

COPY entry.sh /usr/local/bin/

RUN mkdir -p /var/www/app/node_modules
RUN chown -R www-data:www-data /var/www/app/node_modules
VOLUME /var/www/app/node_modules

WORKDIR /var/www/app

CMD ["entry.sh"]
