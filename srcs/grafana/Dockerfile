FROM alpine:latest

RUN apk upgrade
RUN apk update
RUN apk add php7-fpm
RUN apk add bash
RUN apk add nginx supervisor
RUN apk add php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN mkdir -p /run/nginx /var/log/supervisor

COPY ./srcs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./srcs/nginx.conf /etc/nginx/nginx.conf
COPY ./srcs/wordpress /var/www/wordpress
COPY ./srcs/start.sh /start.sh
RUN	sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php7/php-fpm.conf
RUN	sed -it 's/;extension=mysql.so/extension=mysql.so/g' /etc/php7/php.ini
RUN chmod 777 /start.sh

EXPOSE 5050

CMD sh /start.sh
