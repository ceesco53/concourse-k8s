#!/bin/sh
export POD_NAME=$(microk8s kubectl get pods --namespace concourse -l "app=concourse-web" -o jsonpath="{.items[0].metadata.name}")
echo "Visit http://127.0.0.1:8080 to use Concourse"
microk8s kubectl port-forward --namespace concourse $POD_NAME 8080:8080
