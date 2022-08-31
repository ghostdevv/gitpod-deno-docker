FROM        gitpod/workspace-base

WORKDIR     /workspace
USER        gitpod

RUN         sudo apt update
RUN         sudo apt upgrade -y

# Install deno
RUN         curl -fsSL https://deno.land/install.sh | sh
ENV         DENO_INSTALL="/home/gitpod/.deno"
ENV         PATH="$DENO_INSTALL/bin:$PATH"

# Install Python 3.10 - Not a ppa fan but didn't feel like adding 6 commands to manually install python
RUN         sudo add-apt-repository ppa:deadsnakes/ppa -y
RUN         sudo apt install python3.10 python -y
RUN         sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1
