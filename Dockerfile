FROM alpine:3.15.5
RUN apk update
RUN apk add --no-cache mysql mysql-client
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql
RUN rc-service mariadb start
RUN mysqladmin -u root password "1486922887"
RUN sed -i "s|.*bind-address\s*=.*|#bind-address=127.0.0.1|g" /etc/mysql/my.cnf
RUN sed -i "s|.*bind-address\s*=.*|#bind-address=127.0.0.1|g" /etc/my.cnf.d/mariadb-server.cnf
RUN sed -i "s|.*skip-networking.*|#skip-networking|g" /etc/mysql/my.cnf
RUN sed -i "s|.*skip-networking.*|#skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf
RUN cat > /etc/my.cnf.d/mariadb-server-default-charset.cnf << EOF\
[client]\
default-character-set = utf8mb4\
\
[mysqld]\
collation_server = utf8mb4_unicode_ci\
character_set_server = utf8mb4\
\
[mysql]\
default-character-set = utf8mb4\
EOF


