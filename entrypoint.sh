#! /bin/sh

rc-service mariadb start
mysqld_safe --datadir=/var/lib/mysql/ &
sleep 1
mysql -e "use mysql;select User, host from mysql.user;grant all privileges on *.* to 'root'@'%' identified by '$MYSQL_ROOT_PASSWD' with grant option;flush privileges;"
mysqladmin shutdown
mysqld_safe --datadir=/var/lib/mysql
