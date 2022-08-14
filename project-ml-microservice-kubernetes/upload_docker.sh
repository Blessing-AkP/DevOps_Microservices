#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=blessingakpan/flaskapp:v8

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag  blessingakpan/flaskapp:v8  blessingakpan/flaskapp:v9
docker login -u blessingakpan -p $password
# Step 3:
# Push image to a docker repository
docker push blessingakpan/flaskapp:v9