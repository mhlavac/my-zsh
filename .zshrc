source /opt/antigen.zsh

antigen use oh-my-zsh

# Generic
antigen bundle git
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search

antigen bundle ssh-agent
antigen bundle ubuntu
antigen bundle npm
antigen bundle command-not-found
antigen bundle ubuntu
antigen bundle atom
antigen bundle bgnotify
antigen bundle docker
antigen bundle screen
antigen bundle ssh-agent
antigen bundle sudo
antigen bundle vagrant
antigen bundle web-search
antigen bundle tarruda/zsh-autosuggestions

# PHP related
antigen bundle composer
antigen bundle symfony2

# Theme
antigen theme risto

zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# My aliases
alias docker-ubuntu='docker run -i -t ubuntu:15.04 /bin/bash'
