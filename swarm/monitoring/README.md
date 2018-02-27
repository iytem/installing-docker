http://jmkhael.io/deploy-swarm-services-with-the-new-docker-stack-and-a-compose-file-2/


deploy


curl -o docker-compose-stack-monitoring.yml \
https://raw.githubusercontent.com/jmkhael/compose-samples/master/docker-compose-stack-monitoring.yml

docker stack deploy -c docker-compose-stack-monitoring.yml monitoring
