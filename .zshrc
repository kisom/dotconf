sudo -k                 # nuke sudo privs
set -o noclobber
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


if [ -d ${HOME}/bin ]; then
    PATH=${HOME}/bin:${PATH}
fi

if [ -d ${HOME}/scripts ]; then
    PATH=${PATH}:${HOME}/scripts
fi

# OS X-specific paths
if [ "$(uname -s)" = "Darwin" ]; then
    if [ -x ${HOME}/Code/pymods ]; then
        PYTHONPATH=${PYTHONPATH}:${HOME}/Code/pymods
        export PYTHONPATH
    fi
fi

# Linux-specific paths
if [ "$(uname -s)" = "Linux" ]; then
    if [ -x ${HOME}/code/pymods ]; then
        PYTHONPATH=${PYTHONPATH}:${HOME}/code/pymods
        export PYTHONPATH
    fi
fi

PATH=${PATH}:/usr/local/sbin:/usr/sbin:/sbin:/usr/games

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

# RStudio
if [ -d /usr/lib/rstudio/bin ]; then
    PATH=${PATH}:/usr/lib/rstudio/bin
fi

# games
if [ -d /usr/games ]; then
    PATH=${PATH}:/usr/games
fi

export PATH PS1 TERM

# aliases
alias startx="nohup startx &"

# git aliases
alias st="git status"
alias ga="git add"
alias commita="git commit -a"
alias commit="git commit"
alias partial="git add -p"
alias push="git push"
alias pull="git pull"
alias co="git checkout"
alias fetch="git fetch"
alias gd="git diff"

# emacsclient alias
alias em='emacsclient -n -c -a "" '

# compensate for a braindead linux package manager
# apt-get works because i wouldn't be caught dead not using a !debian system
if [ "$(uname -s)" = "Linux" ]; then
    alias pkg_add="apt-get install"
    alias pkg_find="apt-cache search"
fi

