#!/bin/bash

> /home/ubuntu/install.lock

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y docker-engine kubelet kubeadm kubectl kubernetes-cni

rm /home/ubuntu/install.lock
