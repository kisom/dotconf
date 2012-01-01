# source control functions for awesomeness
# 
# i was using aliases but those only work really with one dvcs, so now
# i made them functions so they do the Right Thing (c) whether git or
# mercurial.


get_repo_type () {
    git status 2>/dev/null 1>/dev/null
    if [ 0 -eq $? ]; then
        echo 1
        return 1
    else
        hg status 2>/dev/null 1>/dev/null
        if [ 0 -eq $? ]; then
            echo 2
            return 2
        else
            echo 0
            return 0
        fi
    fi
}

not_a_repo () {
    echo "not a git or mercurial repo!"
}

pull () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        git pull $@
    elif [ "2" = "$repo_type" ]; then
        hg pull $@
    else
        not_a_repo
    fi
}

push () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        git push $@
    elif [ "2" = "$repo_type" ]; then
        hg push $@
    else
        not_a_repo
    fi
}

status () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        git status $@
    elif [ "2" = "$repo_type" ]; then
        hg status $@
    else
        not_a_repo
    fi
}

commit () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        git commit $@
    elif [ "2" = "$repo_type" ]; then
        hg commit $@
    else
        not_a_repo
    fi
}


st () {
    status $@
}

add () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        git add $@
    elif [ "2" = "$repo_type" ]; then
        hg add $@
    else
        not_a_repo
    fi
}

fetch () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        echo "git fetch $@"
        git fetch $@
    elif [ "2" = "$repo_type" ]; then
        echo "hg fetch $@"
        hg fetch $@
    else
        not_a_repo
    fi
}

clog () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        git log $@
    elif [ "2" = "$repo_type" ]; then
        hg log $@ | less
    else
        not_a_repo
    fi
}

checkout () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        git checkout $@
    elif [ "$2" = "$repo_type" ]; then
        hg checkout $@
    else
        not_a_repo
    fi
}

co () {
    checkout $@
}

which_dvcs () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        echo "git"
    elif [ "2" = "$repo_type" ]; then
        echo "mercurial"
    else
        not_a_repo
    fi
}

vcdiff () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        git diff $@
    elif [ "2" = "$repo_type" ]; then
        hg diff $@ | less
    else
        not_a_repo
    fi
}

vcshelp () {
    echo "supported commands:"
    echo "\tcommit"
    echo "\tadd"
    echo "\tpull"
    echo "\tpush"
    echo "\tcheckout"
    echo "\tfetch"
    echo "\tclog"
    echo "\twhich_dvcs"
    echo "\tvcdiff"
}

# suck it trebek
