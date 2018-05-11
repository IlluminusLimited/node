#!/usr/bin/env bash

docker build --file 6.10/Dockerfile -t pinster/awseb:latest -t pinster/awseb:6.10 .
docker build --file 6/Dockerfile -t pinster/awseb:6 .
