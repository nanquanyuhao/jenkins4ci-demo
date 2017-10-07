#! /bin/bash

set -e

if docker ps -a | grep -i jenkins2.60.3-environment ; then
	docker rm -vf jenkins2.60.3-environment
fi

if docker ps -a | grep -i jenkins2.60.3-datacontainer ; then
	echo 'Jenkins Data Container Exists'
else
	docker run --name jenkins2.60.3-datacontainer nanquanyuhao/jenkins2:2.60.3 echo "Jenkins Data Container"
fi

docker run -d --name jenkins2.60.3-environment -p 8080:8080 --volumes-from jenkins2.60.3-datacontainer -v /var/run/docker.sock:/var/run/docker.sock nanquanyuhao/jenkins2:2.60.3
