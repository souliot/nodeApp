#! /bin/sh

cd /app
if [ ! -e "init.lock" ]
then
  touch init.lock
  npm install
  npm start
else
  npm start
fi

