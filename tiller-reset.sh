#!/bin/sh
microk8s kubectl get all --all-namespaces | grep tiller
microk8s kubectl delete deployment tiller-deploy -n kube-system
microk8s kubectl delete service tiller-deploy -n kube-system
microk8s kubectl get all --all-namespaces | grep tiller
microk8s helm init
microk8s kubectl create serviceaccount --namespace kube-system tiller
microk8s kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
microk8s kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
