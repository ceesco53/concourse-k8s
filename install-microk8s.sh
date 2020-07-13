sudo snap install microk8s --classic
microk8s enable helm3 dns dashboard storage ingress
sudo microk8s.kubectl proxy --accept-hosts=.* --address=0.0.0.0 &
