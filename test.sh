#!/bin/sh

docker-compose up --build -d

echo "test" >> test.txt
echo "test other" >> other/testother.txt
echo "test nested" >> test/test.txt

docker-compose logs
docker-compose down

echo "" > test.txt
echo "" > other/testother.txt
echo "" > test/test.txt
