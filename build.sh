#!/bin/sh

# This build script is a hack around not being able
# to specify env vars in docker build

if [ $VERSION ]
then
	echo $VERSION > lockrun_build_version
	docker build -no-cache -rm=true .
	rm -f lockrun_build_version
else
	echo "Please set a VERSION environment variable"
	echo "eg. VERSION=something ./build.sh"
fi
