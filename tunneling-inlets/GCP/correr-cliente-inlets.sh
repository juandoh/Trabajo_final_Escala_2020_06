#!/usr/bin/env bash
REMOTE="34.82.241.14:8090"
TOKEN="9fcff9ef9947a6342545ea40e4634a0ad5d13ed4089fba053b6516091757d7ef"
DIGEST="sha256:e1ae8711fa5a7ee30bf577d665a7a91bfe35556f83264c06896765d75b84a990"
UPSTREAM="localhost:5000"
docker run \
--interactive --tty \
--net=host \
--env=REMOTE=${REMOTE} \
--env=TOKEN=${TOKEN} \
inlets/inlets@${DIGEST} \
client \
--remote=${REMOTE} \
--upstream=${UPSTREAM} \
--token=${TOKEN} 
