#! /bin/bash

set -e

if docker ps -a | grep -i jenkins2-environment ; then
	docker rm -vf jenkins2-environment
fi

if docker ps -a | grep -i jenkins2-datacontainer ; then
	echo 'Jenkins Data Container Exists'
else
	docker run --name jenkins2-datacontainer nanquanyuhao/jenkins:v2 echo "Jenkins Data Container"
fi

docker run -d --name jenkins2-environment -p 8080:8080 --volumes-from jenkins2-datacontainer -v /var/run/docker.sock:/var/run/docker.sock nanquanyuhao/jenkins:v2
