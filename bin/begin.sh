#!/bin/bash
mkdir -p /data/{www,logs/{nginx,php72,php73,php74,php80,redis,mysql57,mysql80,logstash/{logs}},elasticsearch/{data,plugins},logstash,elk,redis,mysql57,mysqlback57,mysql80,mysqlback80}

mv ./docker /data/
cd /data/docker
cp .env.example .env
docker-compose up