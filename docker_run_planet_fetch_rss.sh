#!/bin/sh

config=planet.ini

if [ ! -z "$1" ] 
then
  config=$1
fi

echo Generating Planet Venus with $config

docker run -v `pwd`/data:/opt/planet docker-venus planet --verbose "$config"
