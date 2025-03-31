# Deployment of MongoDB Database

[mongoDB docs](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/)

## Create a DB instance
- Create a new instance with a security group that allows 27017 port for default mongoDB instance
- Connect to the instance as normal through the terminal

## Manual Deployment of Database
### After DB instance connection
1. Update packages
   ```bash
   sudo apt update -y
   ```
2. Stop daemon error
   ```bash
   sudo systemctl stop packagekit
   ```
3. Upgrade packages
   ```bash
   sudo apt upgrade -y
   ```
4. Install gnupg and curl for MongoDB GPG keys
   ```bash
   sudo apt install gnupg curl -y
   ```
5. Add the GPG key
   ```bash
   curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \
   --dearmor
   ```
6. Create sources list file
   ```bash
   echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
   ```
7. Update the package list again
   ```bash
   sudo apt update -y
   ```
8. Install MongoDB
   ```bash
   sudo apt-get install -y mongodb-org=7.0.6 mongodb-org-database=7.0.6 mongodb-org-server=7.0.6 mongodb-mongosh=2.1.5 mongodb-org-mongos=7.0.6 mongodb-org-tools=7.0.6
   ```
9.  Change MongoDB config
    ```bash
    sudo nano /etc/mongod.conf
    # change bindIp to 0.0.0.0
    ```
10. Start MongoDB
    ```bash
    sudo systemctl start mongod
    ```

#### Swap to the app terminal before continuing
11.  Create the environment variable for MongoDB
        ```bash
        export DB_HOST=mongodb://<db-ip-address>:27017/posts
        ```
12.  Install dependencies  
        ```bash
        sudo npm install
        ```
13.  Seed the database
        ```bash
        node seeds/seed.js
        ```
14.  Run the app
        ```bash
        pm2 start app.js &
        ```

---

## Automatic Deployment of Database
1. Create a new file
   ```bash
   nano script.sh
   ```
2. Copy these commands into the script file
   ```bash
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
   ```
