#!/bin/sh

cp -r .zsh ~/.zsh && \
sudo apt-get -y install zsh curl git wget && \
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh && \
sudo cp antigen.zsh /opt && \
cp .zshrc ~/.zshrc && \
chsh -s /bin/zsh && \
zsh
