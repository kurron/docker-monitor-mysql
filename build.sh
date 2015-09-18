#!/bin/bash

docker build --pull --tag="kurron/monitor-redis:latest" .
docker images
