#!/bin/bash

WORKDIR=$(pwd)
SSH_AGENT=$(readlink -f $SSH_AUTH_SOCK)

if [ $(command -v selinuxenabled >/dev/null 2>&1) -a $(selinuxenabled) ]; then
    chcon -Rt svirt_sandbox_file_t $WORKDIR $SSH_AGENT
fi

docker run \
    --rm \
    -i \
    -t \
    -v $WORKDIR:/root/workdir \
    -v $SSH_AGENT:/root/ssh-agent \
    mjanser/capifony \
    $@
