#!/bin/sh

sudo apt-get install zsh curl git wget
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh
sudo mv antigen.zsh /opt
wget -qO- https://raw.githubusercontent.com/mhlavac/my-zsh/master/.zshrc > ~/.zshrc
chsh -s /bin/zsh
zsh
