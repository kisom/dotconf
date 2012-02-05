init_rvm () {
    [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
    alias publish='rake generate deploy'
    alias preview='rake generate preview'
    alias review='open http://localhost:4000 &'
}

