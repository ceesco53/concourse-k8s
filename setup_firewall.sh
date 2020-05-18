#!/bin/sh
sudo ufw allow in on cni0 && sudo ufw allow out on cni0
sudo ufw default allow routed
