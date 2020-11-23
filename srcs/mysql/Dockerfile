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
RUN apk add mariadb
RUN apk add mariadb-client
RUN apk add openrc
RUN apk add bash
RUN mkdir -p /etc/lmallado
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

COPY ./srcs/my.cnf /etc/mysql/
COPY ./srcs/my.cnf /etc/
COPY ./srcs/mariadb-server.cnf /etc/my.cnf.d
COPY ./srcs/wordpress.sql /etc/lmallado/wordpress.sql
COPY ./srcs/db_create.sql /etc/lmallado/db_create.sql
COPY ./srcs/start.sh /start.sh

VOLUME ["/sys/fs/cgroup"]
VOLUME ["/var/lib"]

RUN chmod 777 /start.sh

EXPOSE 3306

CMD sh /start.sh
