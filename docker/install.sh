#!/usr/bin/env bash

set -euo pipefail

docker ps

# Install nginx
docker run --name nginx-proxy --network=host -v ~/Code/ambar_devops/nginx/conf/docker_ambar_proxy.conf:/etc/nginx/nginx.conf:ro -d nginx:1.12

# Install mongodb
mkdir ~/data/
mkdir ~/data/local-mongo/
docker run -p 27017:27017 -v ~/data/local-mongo:/data --name local-mongo -d mongo:4.4 --replSet rs0

docker ps

echo "Open Studio 3T and configure admin database with the next command:"
echo 
echo  "var config = {"
echo  "    '_id' : 'rs0',"
echo  "    'members' : ["
echo  "        {"
echo  "            '_id' : 0,"
echo  "            'host' : 'localhost:27017'"
echo  "        }"      
echo  "     ]"
echo  "};"
echo "rs.initiate(config);"


