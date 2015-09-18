#!/bin/sh

echo  "apt-get install zsh curl git wget"
sudo apt-get -y install zsh curl git wget && \
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh && \
echo  "install zsh antigen"
sudo mv antigen.zsh /opt && \
wget -qO- https://raw.githubusercontent.com/mhlavac/my-zsh/master/.zshrc > ~/.zshrc && \
echo  "Password required for changing shell to /bin/zsh"
chsh -s /bin/zsh && \
zsh
