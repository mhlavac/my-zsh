#!/bin/sh

# Install dependencies
sudo apt-get -y install zsh curl git wget && \

# Install antigen
sudo cp antigen.zsh /opt && \

# Install my packages
cp .zshrc ~/.zshrc && \
mkdir -p ~/.zsh && cp -r .zsh/* ~/.zsh && \
cd git_fresh && sudo ./install && cd ../ && \
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions && \

# Set default shell to zsh
chsh -s /bin/zsh && \
zsh
