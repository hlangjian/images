FROM ubuntu:mantic

ENV USERNAME=dev
ENV USER_UID=2000
ENV USER_GID=$USER_UID

RUN apt-get update && apt-get -y upgrade \ 
    && apt-get install -y sudo git zsh curl wget dpkg nano \
    && groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME} -s /bin/zsh \
    && echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/${USERNAME} \
    && su - ${USERNAME} -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k" \
    && su - ${USERNAME} -c "mkdir ~/workspace" \
    && apt-get -y autoremove && apt-get -y autoclean && apt-get -y clean

COPY --chown=${USERNAME} .zshrc /home/${USERNAME}/.zshrc
COPY --chown=${USERNAME} .p10k.zsh /home/${USERNAME}/.p10k.zsh
COPY --chown=${USER_UID}:${USER_GID} chown-workspace.sh /home/${USERNAME}/chown-workspace.sh

USER ${USERNAME}

RUN cat /home/${USERNAME}/chown-workspace.sh >> ~/.zshrc