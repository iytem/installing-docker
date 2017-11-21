#!/bin/bash

# compiled from https://docs.docker.com/engine/installation/linux/docker-ce/debian/#install-docker-ce

sudo apt-get update -y
sudo apt-get dist-upgrade -y

sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common -y
     
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg -k | sudo apt-key add -
# sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable"

sudo apt-get update -y

sudo apt-get install docker-ce -y
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
