FROM alpine:3.15.5
RUN apk update
RUN apk add --no-cache mysql mysql-client
RUN /etc/init.d/mariadb setup
RUN rc-update add mariadb default
RUN rc-service mariadb start
RUN mysqladmin -u root password "1486922887"

