# MongoDB Cluster

This setup creates 3 nodes running MongoDB 3. After the setup is complete, every node has its own docker volume and inside its own docker network. 

Replica set is initialized by connecting to node1 and executing a rs.initiate. Since every instance is in its own bridge network, we use host ip with host port of every node in the rs.initiate config. 

**This allows us to connect to this replica set without being in a docker network**

## Starting MongoDB with 3 nodes

```
docker-machine start default
eval $(docker-machine env default)

./setup.sh
```

## Connect to MongoDB Replica Set

We can connect to this replica set either from any application requiring mongodb or using the following command.

```
./connect.sh
```

## Destroy them all

This command removes all the MongoDB nodes, their volumes and their networks

```
./teardown.sh
```

