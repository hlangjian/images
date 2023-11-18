FROM joyfourl/dev-base:latest

RUN sudo apt-get update && sudo apt-get install unzip \
    && cd ~ && curl -fsSL https://bun.sh/install | bash \
    && sudo apt-get -y remove unzip \
    && sudo apt-get autoremove && sudo apt-get -y autoclean