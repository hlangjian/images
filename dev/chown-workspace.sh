
if ! [ -e ~/.chown-workspace-done ]; then
    sudo chown -R ${USER_UID}:${USER_GID} /home/${USERNAME}/workspace
    touch ~/.chown-workspace-done
fi