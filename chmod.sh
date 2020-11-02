sudo chmod 666 /var/run/docker.sock
minikube stop
minikube start --vm-driver=virtualbox
minikube status