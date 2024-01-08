rm -rf ./build

export APP_NAME=first_app:1.0

docker build --tag $APP_NAME .
docker cp $(docker create $APP_NAME):/opt/app ./build
docker rmi -f $APP_NAME

mv ./build/*.eap .