#!/bin/sh
set -e

PACKAGES="git curl build-base autoconf automake libtool"

apk del $PACKAGES
rm -rf /var/cache/apk/*
