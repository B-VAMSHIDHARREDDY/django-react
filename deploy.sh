#!/bin/bash

# Create Docker network
docker network create webapp_network

# Pull backend image
docker pull vamshismallday1/backend:v1.0

# Pull frontend image
docker pull vamshismallday1/frontend:v1.0

# Run backend container
docker run -d -p 5000:5000 --name backend --network webapp_network vamshismallday1/backend:v1.0

# Run frontend container
docker run -d -p 3000:3000 --name frontend --network webapp_network vamshismallday1/frontend:v1.0
