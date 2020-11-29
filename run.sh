#!/bin/bash
clear
echo "---vmw avi controller provision---"
ls -al | grep yaml
docker kill alpaca
docker rm alpaca
docker run --name alpaca -v "$PWD/:/home:rw" -ti -d aca2328/alpaca
docker attach alpaca
