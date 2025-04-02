#!/bin/bash
 
sleep 20
 
cd /home/ubuntu
 
cd sparta-app
 
cd app

# Set DB env variable if needed
 
sudo npm install

# Seed database if needed

pm2 kill

pm2 start app.js