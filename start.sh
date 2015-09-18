#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation 
docker run --detach=true --name=mysql-service --net=host --publish=8300:8300 kurron/monitor-mysql:latest 
docker logs --follow=true --tail=all mysql-service 
