#!/bin/sh

mkdir -p /root/resources && cd /root/resources && wget https://raw.githubusercontent.com/diegowcamorim/katacoda-scenarios/master/kubernetes-base/assets/workloads.yaml && wget https://raw.githubusercontent.com/diegowcamorim/katacoda-scenarios/master/kubernetes-base/assets/services.yaml

launch.sh

minikube start

source <(kubectl completion bash)

# enable dashboard
minikube addons enable dashboard

{ clear && echo 'Kubernetes is ready.'; } 2> /dev/null
