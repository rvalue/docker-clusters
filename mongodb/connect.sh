#!/usr/bin/env bash
if [[ $(which mongo) ]]; then
	MONGO_HOST=$(docker-machine ip default)
	mongo "mongodb://${MONGO_HOST}:30001,${MONGO_HOST}:30002,${MONGO_HOST}:30003/?replicaSet=rs0"
else
	echo
	echo "Mongo is required locally to connect to initial replica set. "
	echo "Please install using a package manager or on OSX using > brew install mongo"
fi
