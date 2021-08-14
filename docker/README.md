# Docker

Follow [the guide for Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

Since I like to run docker as a regular user I need this:

    sudo usermod -aG docker $USER

This last step requires one to login again (or simply restart).


## docker-compose

To install the latest version (recommended) run the `curl` command as found on [the installation guide](https://docs.docker.com/compose/install/) (follow the Linux instructions).

Then (as the guide explains) do:

    sudo chmod +x /usr/local/bin/docker-compose
