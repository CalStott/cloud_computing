#!/bin/bash

# Update the system
sudo apt update -y

# Upgrade the system
sudo NEEDRESTART_MODE=a apt upgrade -y

# Install nginx
sudo apt install nginx -y

# Edit the default file for reverse proxy
sudo sed -i '51c\proxy_pass http://127.0.0.1:5000;' /etc/nginx/sites-available/default

# Restart nginx
sudo systemctl restart nginx

# Install curl, unzip and git
sudo apt install -y curl unzip git

# Install curl
# sudo apt install curl -y

# Install unzip
# sudo apt install unzip -y

# Install .NET SDK
sudo apt install dotnet-sdk-8.0 -y

# Install git
# sudo apt install git -y

# Clone the app repo
git clone https://<PAT>@github.com/CalStott/sparta-api.git

# Change directory to the app
cd sparta-api

# unzip the app
unzip sparta-api-main.zip

# Change directory to the unzipped app
cd sparta-api-main

# Publish the app
sudo dotnet publish -c Release -o /var/www/ --runtime linux-x64

# Delete the unzipped app
sudo rm -r ~/sparta-api

# Change directory to the published app
cd /var/www/

# Run the app
sudo dotnet SpartaAcademyAPI.dll &
