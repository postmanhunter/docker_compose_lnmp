#!/bin/bash
mkdir -p /data/{www,logs/{nginx,php72,php73,php74,php80,redis,mysql57,mysql80},redis,mysql57,mysqlback57,mysql80,mysqlback80}
cd ..
mv ./docker /data/
cd /data/docker
cp .env.example .env
docker-compose up