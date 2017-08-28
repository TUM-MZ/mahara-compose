FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get update \
    && apt-get install php php7.0-fpm php7.0-xml php7.0-gd php7.0-curl php7.0-pgsql php7.0-mcrypt php7.0-mbstring libphp-adodb php-imagick php7.0-xmlrpc -y
RUN mkdir -p /run/php
WORKDIR /var/www/html
EXPOSE 9000
CMD /usr/sbin/php-fpm7.0 --allow-to-run-as-root --nodaemonize --fpm-config /etc/php/7.0/fpm/php-fpm.conf
