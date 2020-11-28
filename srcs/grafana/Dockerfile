FROM alpine:latest

RUN apk upgrade
RUN apk update
RUN apk add nginx supervisor
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache
RUN mkdir -p /run/nginx /var/log/supervisor /usr/bin/python
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk
RUN apk update && apk upgrade
RUN apk add openrc glibc-2.31-r0.apk

COPY ./srcs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./srcs/telegraf.conf /etc/telegraf/telegraf.conf
COPY ./srcs/grafana ./grafana
COPY ./srcs/grafana.db ./grafana/data/grafana.db
COPY ./srcs/start.sh /start.sh

RUN chmod 777 /start.sh

EXPOSE 3000

CMD sh /start.sh
