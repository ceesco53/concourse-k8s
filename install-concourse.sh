#!/bin/sh
echo FOR WORKERS ON microk8s
echo Add --allow-privileged=true to:
echo 
echo #kube-apiserver config
echo sudo vim /var/snap/microk8s/current/args/kube-apiserver
echo
microk8s kubectl create namespace concourse
microk8s helm3 install concourse concourse/concourse --namespace concourse --values concourse.values.yml
