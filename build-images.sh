#!/usr/bin/env bash

docker build --file 6/Dockerfile -t pinster/node:latest -t pinster/node:6  -t pinster/awseb:6.10 .
