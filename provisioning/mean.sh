#!/bin/bash

#sudo apt-get update
sudo apt-get install -y wget curl git build-essential
sudo apt-get install -y python-dev python-pip

# mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo mkdir -p /data/db
sudo chown -R mongodb:mongodb /data/db
sudo service mongod start

# nodejs
sudo apt-get install -y node
sudo apt-get install -y npm
