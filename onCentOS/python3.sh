#!/bin/bash

# compiled from https://janikarhunen.fi/how-to-install-python-3-6-1-on-centos-7.html

echo "**************************************"
echo "LABEL maintainer=\"Ahmet AKSIT ahmetaksit@gmail.com\" "
echo "phyton3 and pip3 installing...."
echo "Tested for CentOS 7.4"
echo "**************************************"

sudo yum update -y
sudo yum upgrade -y

sudo yum install -y yum-utils
#sudo yum groupinstall -y development

sudo yum install -y  https://centos7.iuscommunity.org/ius-release.rpm

sudo yum update -y

sudo yum install -y python36u

sudo yum install -y python36u-pip
sudo yum install -y python36u-devel

sudo pip3.6 install docker-compose

echo "***************************************"
sudo python3.6 -V
echo "python3.6 installed."
sudo pip3.6 -V
echo "pip3.6 installed"
echo "python3.6 testing..."
echo "python3.6 -m venv venv"
echo "pip3.6 testing..."
echo ". venv/bin/activate"
echo "pip3.6 install [package_name]"
echo "pip3.6 install -r requirements.txt"
sudo docker-compose -v
echo "docker-compose installed"
echo "***************************************"
