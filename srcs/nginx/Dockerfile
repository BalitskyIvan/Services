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
RUN apk add bash openssh-server supervisor
RUN apk add nginx openssl
RUN mkdir -p /run/nginx /var/run/sshd /var/log/supervisor
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

#COPY ./srcs/default.conf /etc/nginx/conf.d/default.conf
COPY ./srcs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./srcs/nginx.conf /etc/nginx/nginx.conf
COPY ./srcs/start.sh /start.sh
RUN echo -e "ssh_admin\nssh_admin" | adduser ssh_user
RUN chmod 777 /start.sh

EXPOSE 22 80 443

CMD sh /start.sh