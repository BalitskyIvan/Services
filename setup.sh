clear
eval $(minikube docker-env)
#sudo chmod 666 /home/lmallado/.minikube/certs/ca.pem
#minikube status
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

sleep 7
kubectl get deploy