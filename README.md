
# Django and React Simple Backend-Frontend Project
This project aims to create a simple web application with a backend developed using Django and a frontend developed using React. The backend and frontend will be containerized using Docker, and a network will be created to run both containers in the same network.

# Just Runs deploy.sh in your mechin or else , follow below steps rephares

# Build commands
-- build backend image

cd  Todo-application/backend

docker build -t backend:v1.0 .

-- build frontend image

cd Todo-application/frontend

docker build -t frontend:v1.0 .


# After Build Run this comands
## Run Commands

docker network create webapp_network

docker run -d -p 5000:5000 --name backend --network webapp_network backend:v1.0

docker run -d -p 3000:3000 --name frontend --network webapp_network  frontend:v1.0


# OUTPUT
running URL:

http://localhost:3000/

![image](https://github.com/B-VAMSHIDHARREDDY/django-react/assets/87815097/269c6598-74c8-4221-b3d5-0a7fec208028)

