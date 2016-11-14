#!/usr/bin/env bash

echo "deploying to docker"

if [ "$TRAVIS_BRANCH" == "master" ]; then
    docker login -e="$DOCKER_EMAIL" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
    docker push $REPO:$DISTRO
fi
