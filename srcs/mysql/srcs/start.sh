#----------------------------------------------
#start openrc
#----------------------------------------------

openrc default

#----------------------------------------------
#start mariadb daemon
#----------------------------------------------

/etc/init.d/mariadb setup
rc-service mariadb start

#----------------------------------------------
#create db and user
#----------------------------------------------

echo "create database wordpress;" | mysql
echo "grant all on *.* to admin@'%' identified by 'admin' with grant option; update mysql.user set plugin='mysql_native_password' where user='admin'; flush privileges;" | mysql

#----------------------------------------------
#export bd
#----------------------------------------------

mysql wordpress < /etc/lmallado/wordpress.sql

#----------------------------------------------
#stop mariadb daemon
#----------------------------------------------

rc-service mariadb stop

#----------------------------------------------
#start supervisor
#----------------------------------------------

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf