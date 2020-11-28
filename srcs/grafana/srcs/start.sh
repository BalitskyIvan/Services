#----------------------------------------------
#to grafana-server
#----------------------------------------------

cd ./grafana/bin/

#----------------------------------------------
#start supervisor
#----------------------------------------------

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
