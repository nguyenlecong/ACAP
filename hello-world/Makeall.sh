rm -rf ./build

docker build --tag first_app:1.0 .
docker cp $(docker create first_app:1.0):/opt/app ./build
docker rmi -f first_app:1.0

mv ./build/*.eap .