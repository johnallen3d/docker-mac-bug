#!/bin/sh

docker-compose up --build -d

touch test.txt
touch other/testother.txt

docker-compose logs
docker-compose down
