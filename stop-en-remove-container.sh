#!/bin/bash

CONTAINER_NAME="digitalewerkomgeving2-container"

echo "Container stoppen en verwijderen..."
docker rm -f $CONTAINER_NAME 2>/dev/null || echo "Geen container om te stoppen."

echo "Klaar."
