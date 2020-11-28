#----------------------------------------------
#create user
#----------------------------------------------

echo root:root | chpasswd

#----------------------------------------------
#create ssl certificate with 4096 bits
#----------------------------------------------

openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days 3650 \
            -nodes \
            -out /etc/lmallado/localhost.crt \
            -keyout /etc/lmallado/localhost.key \
            -subj "/C=RU/ST=TATARSTAN/L=Kazan/O=School21/OU=University/CN=localhost"

#----------------------------------------------
#start supervisor
#----------------------------------------------

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
