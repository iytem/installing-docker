#!/bin/bash

# compiled from https://docs.docker.com/compose/install/#install-compose

echo "**************************************"
echo "LABEL maintainer=\"Ahmet AKSIT ahmetaksit@gmail.com\" "
echo "docker-compose installing...."
echo "Tested for pip3 (installing Python packages - Python 3.4)"
echo "**************************************"

sudo pip3 install docker-compose

echo "***************************************"
echo "Install as a container"
echo "# sudo curl -L --fail https://github.com/docker/compose/releases/download/1.17.0/run.sh -o /usr/local/bin/docker-compose"
echo "# sudo chmod +x /usr/local/bin/docker-compose"
# sudo curl -L --fail https://github.com/docker/compose/releases/download/1.17.0/run.sh -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
echo "***************************************"
docker-compose --version
echo "Docker Compose installed."
echo "***************************************"
