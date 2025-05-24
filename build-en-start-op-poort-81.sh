#!/bin/bash

IMAGE_NAME="digitalewerkomgeving2"
CONTAINER_NAME="digitalewerkomgeving2-container"

echo "Docker image aan het bouwen..."
docker build -t $IMAGE_NAME .

echo "Eventuele bestaande container stoppen en verwijderen..."
docker rm -f $CONTAINER_NAME 2>/dev/null || true

echo "Container starten op poort 81..."
docker run -d --name $CONTAINER_NAME -p 81:80 $IMAGE_NAME

echo "Je site draait nu op http://localhost:81/"
