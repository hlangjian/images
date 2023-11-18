FROM joyfourl/dev-base:latest

RUN repo_version=$(grep -oP '(?<=^VERSION_ID=).+' /etc/os-release | tr -d '"') \
    && curl -o ~/packages-microsoft-prod.deb https://packages.microsoft.com/config/ubuntu/23.10/packages-microsoft-prod.deb \
    && sudo dpkg -i ~/packages-microsoft-prod.deb \
    && rm ~/packages-microsoft-prod.deb \
    && sudo apt update \
    && sudo apt-get install -y dotnet-sdk-8.0 \
    && sudo apt-get autoremove && sudo apt-get -y autoclean