clear
eval $(minikube -p minikube docker-env)
#sudo chmod 666 /home/lmallado/.minikube/certs/ca.pem
#minikube status
docker build -t nginx_image .
kubectl delete pods nginx
kubectl apply -f nginx.yaml
kubectl logs nginx
