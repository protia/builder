#!/bin/sh

# Protia builder on UNIX platforms

# Uage:
# $ ./build.sh

# halt on error
set -e

# directories
SRC_DIR=./src
BUILD_DIR=./build
TOOLS_DIR=./tools
DISK_DIR=./disk

# repositories
REPOS="base command graphics protia.github.io systema"

# make directories
echo "(1/5) Initialize directories"
mkdir -p ./src
mkdir -p ./build
mkdir -p ./tools
mkdir -p ./disk

# fetch repositories from github
echo "(2/5) Fetch Protia source code"
for repo in $REPOS; do
	echo "      -> https://github.com/protia/$repo"
	if [ ! -d $SRC_DIR/$repo ]; then
		git clone -q "https://github.com/protia/$repo" $SRC_DIR/$repo
	fi
done

# build tools required for compilation
echo "(3/5) Build tools required for compilation"

# compile source code
echo "(4/5) Compile the source code"

# install the system
echo "(5/5) Install the system on disk"
