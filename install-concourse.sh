#!/bin/sh
microk8s kubectl create namespace concourse
microk8s helm3 install concourse concourse/concourse --namespace concourse --values concourse.values.yml
