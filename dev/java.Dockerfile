FROM joyfourl/dev-base:latest

RUN sudo apt-get update \
    # 
    && sudo apt install -y apt-transport-https \
    && sudo mkdir -p /etc/apt/keyrings \
    && sudo wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | sudo tee /etc/apt/keyrings/adoptium.asc \
    # && echo "deb [signed-by=/etc/apt/keyrings/adoptium.asc] https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | sudo tee /etc/apt/sources.list.d/adoptium.list \
    && echo "deb [signed-by=/etc/apt/keyrings/adoptium.asc] https://packages.adoptium.net/artifactory/deb jammy main" | sudo tee /etc/apt/sources.list.d/adoptium.list \
    && sudo apt-get update \
    # && sudo apt-get install -y openjdk-21-jdk \
    && sudo apt-get install -y temurin-21-jdk \
    && sudo apt-get -y remove apt-transport-https \
    && sudo apt-get autoremove && sudo apt-get -y autoclean