#!/bin/sh
microk8s helm3 uninstall concourse --namespace concourse
microk8s kubectl delete namespace concourse
microk8s kubectl delete namespace concourse-main
