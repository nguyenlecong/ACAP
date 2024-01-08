#!/bin/sh
export APP_NAME=stream_video

docker build --tag $APP_NAME .
docker cp $(docker create $APP_NAME):/opt/app ./build
mv build/*.eap .
rm -rf build