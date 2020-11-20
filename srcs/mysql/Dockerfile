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
RUN apk add bash
RUN apk add lighttpd php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom


COPY ./srcs/phpMyAdmin /var/www/phpMyAdmin
COPY ./srcs/start.sh /start.sh

RUN chmod 777 /start.sh

EXPOSE 5050

CMD sh /start.sh
