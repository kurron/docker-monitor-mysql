#!/bin/bash

docker build --pull --tag="kurron/monitor-mysql:latest" .
docker images
