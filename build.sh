#!/bin/sh

# Protia builder on UNIX platforms

# Uage:
# $ ./build.sh

# halt on error
set -e

# make directories
echo "(1/5) Initialize directories"

mkdir -p ./src
SRC_DIR=`realpath ./src`

mkdir -p ./build
BUILD_DIR=`realpath ./build`

mkdir -p ./tools
TOOLS_DIR=`realpath ./tools`

mkdir -p ./disk
DISK_DIR=`realpath ./disk`

# fetch repositories from github
echo "(2/5) Fetch Protia source code"

echo "      -> base"
if [ ! -d $SRC_DIR/base ]; then
	git clone "https://github.com/protia/base" $SRC_DIR/base
fi

echo "      -> command"
if [ ! -d $SRC_DIR/command ]; then
	git clone "https://github.com/protia/command" $SRC_DIR/command
fi

echo "      -> graphics"
if [ ! -d $SRC_DIR/graphics ]; then
	git clone "https://github.com/protia/graphics" $SRC_DIR/graphics
fi

echo "      -> protia.github.io"
if [ ! -d $SRC_DIR/protia.github.io ]; then
	git clone "https://github.com/protia/protia.github.io" $SRC_DIR/protia.github.io
fi

echo "      -> systema"
if [ ! -d $SRC_DIR/systema ]; then
	git clone "https://github.com/protia/systema" $SRC_DIR/systema
fi

# build tools required for compilation
echo "(3/5) Build tools required for compilation"

# compile source code
echo "(4/5) Compile the source code"

# install the system
echo "(5/5) Install the system on disk"
