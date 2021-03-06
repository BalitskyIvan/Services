minikube stop
minikube delete
minikube start --vm-driver=virtualbox

minikube addons enable metallb

kubectl apply -f srcs/config.yaml
kubectl apply -f ./srcs/mysql/pv_config.yaml
kubectl apply -f ./srcs/influxdb/pv_config.yaml

minikube status
sleep 5
clear

eval $(minikube docker-env)

docker image rm nginx_image

docker build -t nginx_image ./srcs/nginx
kubectl delete deploy nginx-deployment
kubectl apply -f ./srcs/nginx/nginx.yaml

docker build -t phpmyadmin_image ./srcs/phpmyadmin
kubectl delete deploy phpmyadmin-deployment
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml

docker build -t wordpress_image ./srcs/wordpress
kubectl delete deploy wordpress-deployment
kubectl apply -f ./srcs/wordpress/wordpress.yaml

docker build -t mysql_image ./srcs/mysql
kubectl delete deploy mysql-deployment
kubectl apply -f ./srcs/mysql/mysql.yaml

docker build -t ftp_image ./srcs/ftp
kubectl delete deploy ftp-deployment
kubectl apply -f ./srcs/ftp/ftp.yaml

docker build -t influx_image ./srcs/influxdb
kubectl delete deploy influx-deployment
kubectl apply -f ./srcs/influxdb/influx.yaml

docker build -t grafana_image ./srcs/grafana
kubectl delete deploy grafana-deployment
kubectl apply -f ./srcs/grafana/grafana.yaml

kubectl get deploy

minikube dashboard &

sleep 10

kubectl get services

say ALL IS DONE  ALL IS DONE  ALL IS DONE  ALL IS DONE
