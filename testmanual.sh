#!/bin/sh

finalize() {
    trap - INT
    docker-compose logs
    docker-compose down

    echo "" > test.txt
    echo "" > other/testother.txt
    exit 0
}

docker-compose up --build -d

trap finalize INT

echo "press ctrl-c when you're done editing the files"

while true; do
    sleep 1
done
