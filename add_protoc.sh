#!/bin/sh
set -e

wget https://github.com/protocolbuffers/protobuf/archive/${PROTOBUF_TAG}.tar.gz 
tar -xzf ${PROTOBUF_TAG}.tar.gz

cd ./${PROTOBUF_TAG}

./autogen.sh || exit 1
./configure --prefix=/usr || exit 1
make -j 3 || echo "make -j 3 error" || exit 1
make check || echo "make check error" || exit 1
make install || echo "make install error" || exit 1

cd ..
rm -rf ./${PROTOBUF_TAG}
