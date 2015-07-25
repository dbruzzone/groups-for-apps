#!/usr/bin/env bash

apt-get update

# Node.js - https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-an-ubuntu-14-04-server
apt-get install -y nodejs npm

# MongoDB - http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
# Import the public key used by the package management system
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

# Create a list file for MongoDB
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

# Reload the local package database
apt-get update

# Install MongoDB
apt-get install -y mongodb-org
