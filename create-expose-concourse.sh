#!/bin/sh
microk8s.kubectl expose deployment concourse-web -n concourse  --type=LoadBalancer --port=8080
