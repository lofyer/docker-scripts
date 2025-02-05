#!/bin/bash
git clone https://github.com/FreshRSS/FreshRSS
cd FreshRSS/Docker/freshrss
cp example.env .env
docker compose -f docker-compose.yml -f docker-compose-db.yml -f docker-compose-local.yml up -d --remove-orphans
#docker compose -f docker-compose.yml -f docker-compose-db.yml -f docker-compose-local.yml down --remove-orphans
