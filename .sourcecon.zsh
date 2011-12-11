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
    echo "repo type: $repo_type"
    if [ "1" = "$repo_type" ]; then
        echo "git pull $@"
        git pull $@
    elif [ "2" = "$repo_type" ]; then
        echo "hg pull $@"
        hg pull $@
    else
        not_a_repo
    fi
}

push () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        echo "git push $@"
        git push $@
    elif [ "2" = "$repo_type" ]; then
        echo "hg push $@"
        hg push $@
    else
        not_a_repo
    fi
}

status () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        echo "git status $@"
        git status $@
    elif [ "2" = "$repo_type" ]; then
        echo "hg status $@"
        hg status $@
    else
        not_a_repo
    fi
}

commit () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        echo "git commit $@"
        git commit $@
    elif [ "2" = "$repo_type" ]; then
        echo "hg commit $@"
        hg commit $@
    else
        not_a_repo
    fi
}


st () {
    status
}

add () {
    repo_type=$(get_repo_type)
    if [ "1" = "$repo_type" ]; then
        echo "git add $@"
        git add $@
    elif [ "2" = "$repo_type" ]; then
        echo "hg add $@"
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



# suck it trebek
