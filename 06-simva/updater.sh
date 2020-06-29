#!/bin/bash

docker-compose stop $1
cd $1
git reset --hard HEAD~10
git pull origin
cd ..
docker-compose up $2 $1
