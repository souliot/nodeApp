#! /bin/sh

cd /app
if [ ! -e "init.lock" ]
then
  npm install
  touch init.lock
fi

if [ $1 ]
then
	npm $i
else
	npm start
fi
