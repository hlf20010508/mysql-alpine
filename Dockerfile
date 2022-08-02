FROM alpine:3.15.5
RUN apk update
RUN apk add --no-cache openrc mysql mysql-client
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql
RUN sed -i "s|.*skip-networking.*|#skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf

EXPOSE 3306

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT sh entrypoint.sh
