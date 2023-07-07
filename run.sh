#!/bin/bash

cd /adam

systemctl restart docker 

docker rmi --force  adam:latest

git clone https://github.com/AdamAFD/ecommerce-backend

cd ecommerce-backend

docker build -t adam .
docker run -d -p 80:8000 adam:latest
