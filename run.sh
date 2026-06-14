#!/bin/bash

if [ "$1" = "build_generator" ]; then
    docker build -t art-generator ./generator

elif [ "$1" = "run_generator" ]; then
    docker run --rm -v "$(pwd)/data:/data" art-generator
fi