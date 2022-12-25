#!/bin/bash

echo "Criando Imagens"

docker build -t mrgabrielson/kubernetes-projeto2-dio:1.0 app/.

echo "Subindo Imagens"

docker push mrgabrielson/kubernetes-projeto2-dio:1.0

echo "Criando Load Balancer"

kubectl apply -f ./load-balancer.yml

echo "Criando Deployments"

kubectl apply -f ./mysql-deployment.yml
kubectl apply -f ./app-deployment.yml
