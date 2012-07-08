# setup symlinks

if [ -z $code_dir ]; then
    if [ -d ${HOME}/Code ]; then
        code_dir="${HOME}/Code"
    elif [ -d ${HOME}/code ]; then
        code_dir="${HOME}/code"
    else
        echo "ERROR:"
        echo "    could not find code dir. pass it in with the code_dir"
        echo "    environment variable."
        exit
    fi
fi

code_dir="${code_dir}/dotconf"

link_file () {
    if [ -h ${HOME}/$1 -o -e ~/$1 ]; then
        echo "$1 already linked!"
        return 1
    fi
    echo "linking ${code_dir}/$1 to ${HOME}/$1"
    ln -s ${code_dir}/$1 ${HOME}/$1
}

link_file .zshrc
link_file .sourcecon.sh
link_file .macos.zsh
link_file .vimrc
link_file .emacs.d
link_file .hgrc



