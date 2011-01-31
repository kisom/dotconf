sudo -k                 # nuke sudo privs
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=** l:|=*'
zstyle :compinstall filename '/home/kisom/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install

if [ -z "$(grep "not found" $(which surfraw))" -a -x $(which surfraw 2>/dev/null) ] ; then
   PATH=${PATH}:$(dirname $(which surfraw) | sed s/bin/lib\\/surfraw/)
fi

if [ -d ${HOME}/bin ]; then
    PATH=${PATH}:${HOME}/bin
fi

if [ -d ${HOME}/scripts ]; then
    PATH=${PATH}:${HOME}/scripts
fi


PATH=${PATH}:/usr/local/sbin:/usr/sbin:/sbin

# append 9base path to end of path
if [ -d /usr/lib/9base ]; then
    PATH=${PATH}:/usr/lib/9base/bin
elif [ -d /usr/local/lib/9base ]; then
    PATH=${PATH}:/usr/local/lib/9base/bin
fi

PS1="<`hostname -s`: %~> $ "

if [ -x /usr/bin/Esetroot -o -x /usr/local/bin/Esetroot ]; then
    export wpsetters=Esetroot
fi

if [[ "$TERM" = "xterm" ]]; then
    TERM="xterm-color"
fi


export PATH PS1 TERM

# aliases
alias ls="ls --color=always"
alias startx="nohup startx &"

# git aliases
alias gs="git status"
alias gc="git commit -a"
alias gpsh="git push"
alias gpul="git pull"
alias gco="git checkout"
alias gf="git fetch"


# compensate for a braindead linux package manager
# apt-get works because i wouldn't be caught dead not using a !debian system
if [ "$(uname -s)" = "Linux" ]; then
    alias pkg_add="apt-get install"
    alias pkg_find="apt-cache search"
fi

