#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation 
docker run --detach=true --name=redis-service --net=host --publish=8200:8200 kurron/monitor-redis:latest 
docker logs --follow=true --tail=all redis-service 
