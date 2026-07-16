#!/bin/bash


sudo yum install python python3-pip -y
sudo pip3 install --update pip
pip3 install docker-compose
docker-compose version

# bash compose.sh