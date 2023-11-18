FROM joyfourl/dev-base:latest

ARG NODE_MAJOR=20

RUN mkdir -p /etc/apt/keyrings \
    && sudo apt-get update && sudo apt-get install -y ca-certificates gnupg \
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_${NODE_MAJOR}.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list \
    && sudo apt-get update && sudo apt-get install nodejs -y \
    && sudo apt-get autoremove && sudo apt-get -y autoclean && sudo apt-get -y clean \
    && sudo npm i -g npm@latest pnpm@latest
