FROM alpine:latest

RUN apk upgrade
RUN apk update
RUN apk add influxdb
RUN apk add supervisor
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

COPY ./srcs/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./srcs/start.sh /start.sh
COPY ./srcs/telegraf.conf /etc/telegraf/telegraf.conf
RUN chmod 777 /start.sh
VOLUME [ "/sys/fs/cgroup" ]

EXPOSE 3000

CMD sh /start.sh
