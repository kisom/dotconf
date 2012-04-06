sudo -k                 # nuke sudo privs
set -o noclobber
EDITOR=emacs
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=** l:|=*'
zstyle :compinstall filename '/Users/kisom/.zshrc'

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

PATH=/usr/local/bin:${PATH}
if [ -d ${HOME}/bin ]; then
    PATH=${HOME}/bin:${PATH}
fi

if [ -d ${HOME}/scripts ]; then
    PATH=${PATH}:${HOME}/scripts
fi

# OS X-specific paths - includes support for homebrew pymods and my own pymods
if [ "$(uname -s)" = "Darwin" ]; then
    if [ -x ${HOME}/Code/pymods ]; then
        PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
        PYTHONPATH=${PYTHONPATH}:${HOME}/Code/pymods:/Library/Python/2.7/site-packages
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

PS1="<`hostname -s`: %~> λ "
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

# texworks
if [ -d /usr/texbin ]; then
    PATH=${PATH}:/usr/texbin
fi

# clojure
if [ -e /usr/local/bin/clj ]; then
    export CLASSPATH=${CLASSPATH}:${HOME}/.lein/plugins
fi

# fix for st on FreeBSD
if [ "x$TERM" = "xst-256color" ]; then
    TERM="xterm"
fi

export PATH PS1 TERM

# grab my baller source control commands
source ${HOME}/.sourcecon.zsh

if [ "$(uname -s)" = "Darwin" ]; then
    source ${HOME}/.macos.zsh
fi

# the rvm init takes up time so i only load it when i need it
if [ -d "${HOME}/.rvm" ]; then
    source ${HOME}/.init_rvm.zsh
    init_rvm
fi

if [ -x ~/.vim/autoload/pathogen.vim ]; then
    function pathogen_install() { cp -r $1 ~/.vim/bundles/ }
fi

which youtube-dl 2>/dev/null 1>/dev/null
if [ "$?" = "0" ]; then
    ytget () {
        if [ -z "$(echo $1 | sed -ne /youtube/p)" ]; then
            url="http://www.youtube.com/watch?v=$1"
        else
            url=$1
        fi
        youtube-dl -t $url
    }
fi

plint () {
    if [ "g" = "$1" -a ! -z "$2" ]; then
        pylint $2 2>/dev/null | grep "code has been rated"
    else
        pylint $1 | less
    fi
}

# VBoxManage presupposes VBoxHeadless...
which VboxManage 2>/dev/null 1>/dev/null
if [ "$?" = 0 ]; then
    source ~/.virtualbox.zsh
fi

# compensate for a braindead linux package manager
# apt-get works because i wouldn't be caught dead not using a !debian system
if [ "$(uname -s)" = "Linux" ]; then
    alias pkg_add="apt-get install"
    alias pkg_find="apt-cache search"
fi

