#!/bin/bash

# Run docker image to build the themes.
docker run -e PATTERN=macdown -v $PWD/output/:/src/output daylerees/rainglow:latest

# Kill old themes.
rm -rf ../dist/*

# Move themes to the root.
cp -R output/macdown/* ../dist/

# Delete temp themes.
rm -rf output