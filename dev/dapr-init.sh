
sudo chown ${USER_UID}:${USER_GID} /var/run/docker.sock

if [[ $(dapr --version) == *"n/a"* ]]; then
  dapr uninstall && dapr init
fi