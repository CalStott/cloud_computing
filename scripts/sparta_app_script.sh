#!/bin/bash

# update
sudo apt update -y

# fix the packagekit daemon error
sudo systemctl stop packagekit

# upgrade (fix the daemon error here)
sudo apt upgrade -y

# install nginx
sudo apt install nginx -y

# enable nginx
sudo systemctl enable nginx

# get app code - cannot use scp (hint: use github and git)!
git clone https://github.com/CalStott/sparta-app.git

# install nodejs version 20.x
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\sudo apt-get install -y nodejs
 
# check version
node -v

# cd into cloned directory
cd sparta-app

# cd into app directory
cd app

# install dependencies
npm install

# start the app (starts in foreground by default)
npm start app.js
