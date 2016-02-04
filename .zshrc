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
antigen theme mhlavac/my-zsh .zsh/theme/mhlavac

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
