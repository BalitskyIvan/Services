
#create main dir
mkdir /etc/lmallado

adduser -D admin1
echo admin1:root1 | chpasswd

#----------------------------------------------
#create ssh key supervisor
#----------------------------------------------

ssh-keygen -A

#-----------------------
#create ssl certificate with 4096 bits
#-----------------------

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