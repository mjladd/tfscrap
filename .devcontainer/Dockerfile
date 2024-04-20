FROM linuxcontainers/debian-slim:latest

RUN apt update && \
    apt upgrade -y

RUN apt install curl git make unzip zsh wget -y

RUN wget https://releases.hashicorp.com/terraform/1.8.1/terraform_1.8.1_linux_arm64.zip
RUN unzip terraform*.zip && mv terraform /usr/local/bin


## install oh-my-zsh
# with robbyrussell" and git/terraform plugins
RUN sh -c "$(curl -L  https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -t robbyrussell \
    -p git  \
    -p terraform \
    -a 'alias sl=ls' \
    -a "alias ls='ls -p'" \
    -a "alias tf='/usr/local/bin/terraform'" \
    -a 'unsetopt AUTO_REMOVE_SLASH'


# Change default SHELL
RUN chsh -s /usr/bin/zsh

