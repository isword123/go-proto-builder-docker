#!/bin/sh
set -e

PACKAGES="git curl build-base autoconf automake libtool"

apk add --update $PACKAGES
