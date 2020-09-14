#!/bin/sh

GOLANG_VERSION=1.14

docker run --rm --user "$(id -u):$(id -g)" -v /etc/passwd:/etc/passwd:ro -v "$PWD":"$HOME" -w "$HOME" golang:$GOLANG_VERSION go build -v
