#!/bin/bash

sleep 30
echo 'initializing cleaning'

while true; do
	
  # https://docs.docker.com/engine/reference/commandline/image_prune/
  docker system prune --all --force
  docker volume prune --force

  # DOCKER_CLEAN_INTERVAL defaults to 30min
  sleep $DOCKER_CLEAN_INTERVAL
done
