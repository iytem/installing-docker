#!/bin/bash

# compiled from https://docs.docker.com/engine/installation/linux/docker-ce/centos/#install-docker-ce

echo "**************************************"
echo "LABEL maintainer=\"Ahmet AKSIT ahmetaksit@gmail.com\" "
echo "Docker-ce installing...."
echo "Tested for CentOS 7.4"
echo "**************************************"

sudo yum update -y
sudo yum upgrade -y

sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo

sudo yum-config-manager --enable docker-ce-edge

sudo yum-config-manager --enable docker-ce-test

sudo yum-config-manager --disable docker-ce-edge

sudo yum update -y

# yum list docker-ce --showduplicates | sort -r
sudo yum install -y docker-ce

sudo groupadd docker
sudo usermod -a $USER -G docker

sudo systemctl start docker

echo "***************************************"
sudo docker --version
echo "Docker installed."
echo "Docker testing..."
echo "sudo docker run hello-world"
echo "***************************************"
