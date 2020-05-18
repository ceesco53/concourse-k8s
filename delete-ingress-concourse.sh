#!/bin/sh
cat <<EOF | microk8s kubectl delete -f -
apiVersion: networking.k8s.io/v1beta1
kind: Ingress
metadata:
  name: concourse-web-ingress
  namespace: concourse
spec:
  rules:
  - host: concourse.lan
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          serviceName: concourse-web
          servicePort: 8080
EOF
