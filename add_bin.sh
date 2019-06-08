#!/bin/sh

# go protobuf
GO_PROTOBUF_DIR_NAME="golang-protobuf-${GO_PROTOBUF_TAG}"
# download
wget -O ${GO_PROTOBUF_DIR_NAME}.tar.gz https://github.com/golang/protobuf/archive/${GO_PROTOBUF_TAG}.tar.gz
mkdir -p /go/src/github.com/golang/protobuf
# unachive and generate protoc-gen-go
tar -xzf ${GO_PROTOBUF_DIR_NAME}.tar.gz -C /go/src/github.com/golang/protobuf && cd /go/src/github.com/golang/protobuf && make && cd -

rm ${GO_PROTOBUF_DIR_NAME}.tar.gz

# add grpc
go get -u -v google.golang.org/grpc

# add grpc gateway
go get -u -v github.com/grpc-ecosystem/grpc-gateway

# gen protoc-gen-grpc-gateway
cd /go/src/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway && go install . && cd -

# gen protoc-gen-swagger
cd /go/src/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger && go install . && cd -
