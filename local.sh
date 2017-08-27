#!/bin/bash

if [ -z "$PS1" ] ; then
    echo -e "ERROR: This script must be sourced."
    exit
fi

eval $(docker-machine env dev)

echo "DOCKER_TLS_VERIFY = $DOCKER_TLS_VERIFY"
echo "DOCKER_HOST = $DOCKER_HOST"
echo "DOCKER_CERT_PATH = $DOCKER_DOCKER_CERT_PATH"
echo "DOCKER_MACHINE_NAME = $DOCKER_MACHINE_NAME"
#docker-compose run users-service python manage.py test
