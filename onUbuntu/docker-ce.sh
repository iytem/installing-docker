#!/bin/bash

# compiled from https://docs.docker.com/engine/install/ubuntu/

echo "**************************************"
echo "LABEL maintainer=\"Ahmet AKSIT ahmetaksit@gmail.com\" "
echo "Docker-ce installing...."
echo "Tested for Ubuntu 20.04.3 LTS (focal)"
echo "**************************************"

sudo apt-get update -y
sudo apt-get dist-upgrade -y

sudo apt-get install \
     ca-certificates \
     curl \
     gnupg \
     lsb_release -y

curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg -k | sudo apt-key add -
# sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"

sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#sudo apt-cache madison docker-ce

sudo groupadd docker
sudo usermod -a $USER -G docker

sudo systemctl start docker.service

echo "***************************************"
sudo docker --version
echo "Docker installed."
echo "Docker testing..."
echo "sudo docker run hello-world"
echo "***************************************"
