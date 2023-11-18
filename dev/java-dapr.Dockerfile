FROM joyfourl/dev-java:latest

ARG DOCKER_URL=https://download.docker.com/linux/static/stable/x86_64
ARG DOCKER_VERSION=18.03.1-ce

RUN curl -fsSL ${DOCKER_URL}/docker-${DOCKER_VERSION}.tgz | \
    sudo tar zxvf - --strip 1 -C /usr/bin docker/docker \
    && wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash