#!/bin/bash

# wait for the AMI to finish creating the file structure 
sleep 20

# change into ubuntu user from root 
cd /home/ubuntu

# cd into the app directory 
cd sparta-app
 
cd app

# Set DB env variable if needed
# export DB_HOST=mongodb://<db-ip-address>:27017/posts

# install the dependencies 
sudo npm install

# Seed database if needed
# node seeds/seed.js

# kill any running node processes that could interfere - idempotency
pm2 kill

# run the app with pm2
pm2 start app.js
