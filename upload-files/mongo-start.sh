#!/bin/bash

# docker network create NET-MONGO
# docker volume create VOL-MONG
O
docker run -d --network NET-MONGO \
	-h mongo --name mongo \
	-e MONGO_INITDB_ROOT_USERNAME=mongoadmin \
	-e MONGO_INITDB_ROOT_PASSWORD=secret \
	-p 27017:27017 \
	-v VOL-MONGO:/data/db mongo:latestdock

# "Env": [
#     "MONGO_INITDB_ROOT_USERNAME=mongoadmin",
#     "MONGO_INITDB_ROOT_PASSWORD=secret",
#     "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
#     "GOSU_VERSION=1.12",
#     "JSYAML_VERSION=3.13.1",
#     "MONGO_PACKAGE=mongodb-org",
#     "MONGO_REPO=repo.mongodb.org",
#     "MONGO_MAJOR=6.0",
#     "MONGO_VERSION=6.0.3",
#     "HOME=/data/db"
# ],
