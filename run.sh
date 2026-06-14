#!/bin/bash

if [ "$1" = "build_generator" ]; then
    docker build -t art-generator ./generator

elif [ "$1" = "run_generator" ]; then
    docker run --rm -v "$(pwd)/data:/data" art-generator

elif [ "$1" = "build_reporter" ]; then
    docker build -t art-reporter ./reporter

elif [ "$1" = "run_reporter" ]; then
    docker run --rm -v "$(pwd)/data:/app/data" art-reporter
    
elif [ "$1" = "clear_data" ]; then
    rm -f data/*.csv data/*.html
fi