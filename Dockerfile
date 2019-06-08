FROM golang:1.11-alpine

ENV PROTOBUF_TAG=v3.6.1.1

ENV GO_PROTOBUF_TAG=v1.1.0

ADD prepare.sh /tmp/prepare.sh

ADD add_protoc.sh /tmp/add_protoc.sh

ADD add_bin.sh /tmp/add_bin.sh

ADD clean.sh /tmp/clean.sh
