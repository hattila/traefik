#!/bin/bash

echo "Starting traefik..."
docker network inspect traefik >/dev/null 2>&1 || docker network create --driver bridge traefik
docker-compose up -d
