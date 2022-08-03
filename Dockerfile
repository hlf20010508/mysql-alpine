FROM alpine:3.15.5
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update && \
    apk add --no-cache mysql=10.6.8-r0 mysql-client=10.6.8-r0 netcat-openbsd=1.130-r3

EXPOSE 3306

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT sh entrypoint.sh
