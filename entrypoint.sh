#! /bin/sh

cd /app
if [ ! -e "init.lock" ]
then
  npm install
  npm start
  touch init.lock
else
  npm start
fi

