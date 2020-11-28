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
RUN apk add supervisor
RUN apk add vsftpd openrc openssl
RUN mkdir -p /etc/lmallado
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

COPY ./srcs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./srcs/start.sh /start.sh
COPY ./srcs/vsftpd.conf /etc/lmallado/vsftpd.conf
COPY ./srcs/telegraf.conf /etc/telegraf/telegraf.conf

RUN chmod 777 /start.sh
# RUN echo root:root | chpasswd

EXPOSE 21

CMD sh /start.sh