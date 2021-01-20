#!/bin/bash

if [ -f /etc/redhat-release ] ; then
	yum update -y
elif [ -f /etc/debian_version ] ; then
echo "Upgrading system and setting up docker"
apt-get update && apt-get -y upgrade -y
apt-get install -y docker.io git
#cat > /etc/docker/daemon.json <<EOF
#{
#"ipv6": true
#}
#EOF
systemctl enable docker && systemctl start docker
fi