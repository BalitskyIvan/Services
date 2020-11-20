minikube stop
minikube delete
minikube start --vm-driver=virtualbox
minikube addons enable metallb
kubectl apply -f srcs/config.yaml
minikube status
sleep 5
clear