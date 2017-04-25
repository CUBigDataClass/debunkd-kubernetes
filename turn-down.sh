#!/bin/bash

export KUBECONFIG=$HOME/admin.conf
kubectl drain $1 --delete-local-data --force --ignore-daemonsets
kubectl delete node $1
