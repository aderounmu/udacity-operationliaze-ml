#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t udacity-prediction:2.0.4 .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app

docker run -p 8085:80 udacity-prediction:2.0.4
