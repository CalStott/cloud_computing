#!/bin/bash

# update
sudo apt update -y

# stop the packagekit daemon error
sudo systemctl stop packagekit

# upgrade
sudo apt upgrade -y

# install nginx
sudo apt install nginx -y

# edit nginx config with reverse proxy settings
sudo sed -i '51c\       proxy_pass http://0.0.0.0:3000;' /etc/nginx/sites-available/default

# restart nginx
sudo systemctl restart nginx

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
sudo npm install

# install pm2 - process manager package for nodejs apps
sudo npm install pm2 -g

# kill any running node processes that could interfere - idempotency
pm2 kill

# run the app with pm2 (& = run in background)
pm2 start app.js &
