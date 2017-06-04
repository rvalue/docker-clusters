# ElasticSearch Cluster

Spin it up!

```
docker-machine start default
eval $(docker-machine env default)
docker-compose up -d master
docker-compose scale slave=4
docker-compose ps

# To stop and delete all containers
docker stop $(docker ps -qa)
docker rm $(docker ps -qa)

# Check if cluster health is green
http $(docker-machine ip default):9200/_cluster/health

# If you need more data or if the health is not green, you may need more data nodes. Scale them up!
docker-compose scale slave=6
```
