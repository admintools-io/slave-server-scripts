#!/bin/bash

docker stop admintools-slave
docker rm admintools-slave
docker rmi admintools/slave
docker pull admintools/slave
docker run -d --name admintools-slave -p 80:80 admintools/slave