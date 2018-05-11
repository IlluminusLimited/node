#!/usr/bin/env bash

docker build --file 6.10/Dockerfile -t pinster/node:latest -t pinster/node:6.10 .
docker build --file 6/Dockerfile -t pinster/node:6 .
