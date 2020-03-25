# Docker

Follow [the guide for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

Since I like to run docker as a regular user I need this:

    sudo usermod -aG docker your-user

This last step requires one to login again (or simply restart).


## docker-compose

    sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
