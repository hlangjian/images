FROM joyfourl/dev-dotnet:latest

ARG DOCKER_URL=https://download.docker.com/linux/static/stable/x86_64
ARG DOCKER_VERSION=18.03.1-ce

COPY --chown=${USER_UID}:${USER_GID} dapr-init.sh /home/${USERNAME}/dapr-init.sh

RUN curl -fsSL ${DOCKER_URL}/docker-${DOCKER_VERSION}.tgz | \
    sudo tar zxvf - --strip 1 -C /usr/bin docker/docker \
    && wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash \
    && cat /home/${USERNAME}/dapr-init.sh >> ~/.zshrc
