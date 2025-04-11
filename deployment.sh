#!/bin/bash

# Step 1 - Installing dependencies
echo "Updating packages..."
sudo apt update
echo "Installing dependencies..."
sudo apt install -y git curl

# Step 2 - Installing Docker using convenience script
echo "Installing Docker using convenience script..."
sudo curl -fsSL https://get.docker.com -o /opt/get-docker.sh
sudo sh /opt/get-docker.sh

# Step 3 - Cloning the repo
echo "Cloning the repo..."
sudo git clone https://github.com/gbenachour/movies-gold.git /opt/movies-gold 

# Step 4 - Creating an .env file
sudo cp /opt/movies-gold/.env.example /opt/movies-gold/.env

# Running docker compose (deploying stack)
echo "Deploying application..."
sudo docker compose -f /opt/movies-gold/compose.yaml up -d

# Sleeping to wait for db to populate
echo "Waiting for database to populate..."
sleep 30

# Deleting opt files (repo, installation scripts etc...)
sudo rm -rf /opt/*