#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation
docker run --detach=true --name=mysql-service --net=host --publish=8300:8300 --env=NEW_RELIC_APP_NAME=mysql-service --env=NEW_RELIC_HOST_DISPLAY_NAME=${HOSTNAME} kurron/monitor-mysql:latest
docker logs --follow=true --tail=25 mysql-service
