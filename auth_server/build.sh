#!/bin/bash

docker login -u seit registry.trt3.jus.br
docker build -t  trt3infra/docker_auth:$1 .
docker tag trt3infra/docker_auth:$1 registry.trt3.jus.br/trt3infra/docker_auth:$1
docker push registry.trt3.jus.br/trt3infra/docker_auth:$1

