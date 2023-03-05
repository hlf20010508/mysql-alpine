FROM alpine:3.7

RUN apk update && \
    apk add --no-cache mysql mysql-client netcat-openbsd

EXPOSE 3306

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT sh entrypoint.sh
