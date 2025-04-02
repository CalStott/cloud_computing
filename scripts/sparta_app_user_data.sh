#!/bin/bash

# wait for the AMI to finish creating the file structure 
sleep 20

# change into ubuntu user from root 
cd /home/ubuntu

# cd into the app directory 
cd sparta-app
 
cd app

# Set DB env variable if needed

# install the dependencies 
sudo npm install

# Seed database if needed

# kill any running node processes that could interfere - idempotency
pm2 kill

# run the app with pm2
pm2 start app.js
