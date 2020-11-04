clear
eval $(minikube docker-env)
#sudo chmod 666 /home/lmallado/.minikube/certs/ca.pem
#minikube status
docker build -t nginx_image .
kubectl delete deploy nginx-deployment
kubectl apply -f nginx.yaml
sleep 7
kubectl get deploy