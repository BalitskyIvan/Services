FROM alpine:latest

RUN apk upgrade
RUN apk update
RUN apk add influxdb
RUN apk add bash


COPY ./srcs/start.sh /start.sh

RUN chmod 777 /start.sh

EXPOSE 8086

CMD sh /start.sh
