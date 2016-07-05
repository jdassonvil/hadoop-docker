#!/bin/bash

docker build -t hadoop-base ./hadoop-base
docker-compose build
docker volume create --name=namenode-data
docker volume create --name=datanode-data
docker run -v namenode-data:/var/hdfs/namenode h4dev/hadoop-namenode bin/hadoop namenode -format
