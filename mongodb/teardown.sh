#!/usr/bin/env bash
DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker-compose -f ${DIRECTORY}/resources/docker-compose.yml down -v