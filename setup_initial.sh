# setup symlinks

if [ -z $code_dir ]; then
    if [ -d ~/Code ]; then
        code_dir="~/Code"
    elif [ -d ~/code ]; then
        code_dir="~/code"
    else
        echo "ERROR:"
        echo "    could not find code dir. pass it in with the code_dir"
        echo "    environment variable."
        exit
    fi
fi

code_dir="${code_dir}/dotconf"

link_file () {
    if [ -x ~/$1 ]; then
        echo "$1 already linked!"
        return 1
    fi
    echo "linking ${code_dir}/$1 to ~/$1"
    ln -s ${code_dir}/$1 ~/$1
}

link_file .zshrc
link_file .sourcecon.zsh
link_file .macos.zsh
link_file .vimrc
link_file .emacs.d
link_file .hgrc



