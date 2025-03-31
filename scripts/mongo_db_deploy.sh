#!/bin/bash

# update packages
sudo apt update -y

# stop the packagekit daemon error
sudo systemctl stop packagekit

# upgrade packages
sudo apt upgrade -y

# install gnupg and curl - gnupg needed for GPG keys that mongoDB uses
sudo apt install gnupg curl -y

# add the GPG key
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \
   --dearmor

# create sources list file
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

# update the package list again
sudo apt update -y

# install mongoDB
sudo apt-get install -y mongodb-org=7.0.6 mongodb-org-database=7.0.6 mongodb-org-server=7.0.6 mongodb-mongosh=2.1.5 mongodb-org-mongos=7.0.6 mongodb-org-tools=7.0.6

# change mongoDB config
sudo sed -i '21c\  bindIp: 0.0.0.0' /etc/mongod.conf

# start mongoDB
sudo systemctl start mongod

# check mongoDB status
sudo systemctl status mongod
