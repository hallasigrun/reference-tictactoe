#!/bin/bash

# Exit if a command exits with a non-zero status
set -e

# Setting node path to current directory
set NODE_PATH=.

# Remove the build directory if it exists, 
if [ -d ./build ]; then rm -r ./build; fi

# Recreate the build directory
[ -d ./build ] || mkdir build

# Build with the npm script in package.json 
npm run buildclient
npm run buildclient

# Move
mv ./client/build ./build/static

# Copy files to the build folder
cp -R ./server ./build/server

# Create a new folder and copy files for framework to build folder
mkdir -p ./build/client/src
cp -r ./client/src/common ./build/client/src

# Copy files to run the build
cp ./run.js ./build
