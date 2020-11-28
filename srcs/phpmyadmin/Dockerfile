# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmallado <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/04 20:32:26 by lmallado          #+#    #+#              #
#    Updated: 2020/10/04 20:32:31 by lmallado         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

RUN apk upgrade
RUN apk update
RUN apk add php
RUN apk add openrc
RUN apk add php7-fpm
RUN	rc-update add php-fpm7 default
RUN apk add php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
RUN apk add mariadb
RUN apk add mariadb-client
RUN apk add nginx supervisor mysql mysql-client php-mysqli php7-mbstring php7-mysqli php7-phar php7-session
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN rm -rf /etc/nginx/conf.d/default.conf
RUN mkdir -p /run/nginx /var/log/supervisor
RUN mkdir /var/run/php


COPY ./srcs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./srcs/nginx.conf /etc/nginx/nginx.conf
COPY ./srcs/phpmyadmin /var/www/phpmyadmin
COPY ./srcs/start.sh /start.sh
COPY ./srcs/telegraf.conf /etc/telegraf/telegraf.conf

RUN sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php7/php-fpm.conf

RUN chmod 777 /start.sh

EXPOSE 5000

CMD sh /start.sh
