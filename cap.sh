#!/bin/bash

docker run \
    --rm \
    -i \
    -t \
    -v $(pwd):/root/workdir \
    -v $(readlink -f $SSH_AUTH_SOCK):/root/ssh-agent \
    mjanser/capifony \
    $@
