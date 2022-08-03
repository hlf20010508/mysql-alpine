#! /bin/sh

mysql_install_db --user=mysql --datadir=/var/lib/mysql

sed -i "s|.*skip-networking.*|#skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf

mysqld_safe --datadir=/var/lib/mysql/ &

nc -zv 0.0.0.0 3306 &> /dev/null
while [[ $? == 1 ]]
do
nc -zv 0.0.0.0 3306 &> /dev/null
done

apk del netcat-openbsd

mysql -e "use mysql;select User, host from mysql.user;grant all privileges on *.* to 'root'@'%' identified by '$MYSQL_ROOT_PASSWD' with grant option;flush privileges;"

mysqladmin shutdown

mysqld_safe --datadir=/var/lib/mysql
