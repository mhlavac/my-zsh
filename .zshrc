source /opt/antigen.zsh

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

antigen-bundle zsh-users/zsh-autosuggestions

zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# My aliases
git_commit_and_push() {
    message=`printf '%q ' $@`
    git commit -m "$message" && git push
}

alias docker-ubuntu='docker run -i -t ubuntu:15.10 /bin/bash'
alias docker-php='docker run -i -t php:7-cli php'
alias l="ls -lah"
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch -v'
alias st='git status'
alias gcp=git_commit_and_push
