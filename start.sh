#!/bin/bash

# make the docker image
mvn -T2C\
  liquibase:updateSQL || exit 1

#build the docker image
docker-compose down\
 && docker-compose build --no-cache 2>&1 | tee dockerbuild.log

