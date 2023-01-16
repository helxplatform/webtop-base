#!/bin/bash

# Uncomment and set TAG if it should be used instead of a timestamp. The
# "latest" tag will always be set.
# export TAG="0.0.1"
export IMAGE_NAME=helxplatform/webtop/base
export REGISTRY=containers.renci.org

docker_run_command() {
    # rm -rf $SCRIPT_DIR/config
    # mkdir -p $SCRIPT_DIR/config

    # Run as root, switch to default uid:gid, open port for web service.
    # Mount ./config as /config in container as the abc user's home directory.
    # docker run -p 3000:3000 -v $PWD/config:/config $REGISTRY/$IMAGE_NAME:$TAG

    # Run as root, switch to default uid:gid, open port for web service.
    # Switch to uid=1337 gid=1337.  Uses regular webtop variables.
    # docker run -p 3000:3000 -v $PWD/config:/config -e PUID=1337 -e PGID=1337 $REGISTRY/$IMAGE_NAME:$TAG

    # USER variable added to webtop.
    # docker run -p 3000:3000 -v $PWD/config:/config -e PUID=1337 -e PGID=1337 -e USER=pjl $REGISTRY/$IMAGE_NAME:$TAG

    # run with the minimum
    # docker run -p 3000:3000 $REGISTRY/$IMAGE_NAME:$TAG

    # Test if uid, gid, and arbitrary user work.
    docker run -p 3000:3000 -e TZ="America/New_York" -e PUID=1337 -e PGID=1337 -e USER=$USER $REGISTRY/$IMAGE_NAME:$TAG

}
export -f docker_run_command
