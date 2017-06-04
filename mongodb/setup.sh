#!/usr/bin/env bash
DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker-compose -f ${DIRECTORY}/resources/docker-compose.yml up -d

if [[ $(which mongo) ]]; then
	mongo --verbose "$(docker-machine ip default):30001" "${DIRECTORY}/resources/setupReplicaSet.js"
else
	echo
	echo "Mongo is required locally to setup initial replica set. "
	echo "Please install using a package manager or on OSX using > brew install mongo"
fi