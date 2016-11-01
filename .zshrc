source /opt/antigen.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

antigen use oh-my-zsh

# Generic
antigen bundle git
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search

antigen bundle bgnotify
antigen bundle command-not-found
antigen bundle docker
antigen bundle npm
antigen bundle screen
antigen bundle sudo
antigen bundle ubuntu
antigen bundle ubuntu
antigen bundle vagrant
antigen bundle web-search

# PHP related
antigen bundle composer
antigen bundle symfony2

# Theme
antigen theme mhlavac/my-zsh .zsh/theme/mhlavac

# My aliases
alias docker-ubuntu='docker run -i -t ubuntu:16.04 /bin/bash'
alias docker-php='docker run -i -t php:7-cli php'
alias docker-clean='docker stop $(docker ps -a -q) && docker rm -f $(docker ps -a -q) && docker rmi -f $(docker images -q)'
alias l="ls -lah"
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch -v'
alias st='git status'
alias symfony='app/console'

# Weather alias
weather() {
    curl wttr.in/$1
}
alias weather=weather
