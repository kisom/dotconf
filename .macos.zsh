# includes specific to the mac machines

nodedoc () {
    if [ -z $1 ]; then
        open ~/Documents/Developer\ Library/node/nodejs/api/index.html
        return
    fi

    if [ -z $MARKDOWN_VIEWER ]; then
        export MARKDOWN_VIEWER='/Applications/Marked.app/Contents/MacOS/Marked'
    fi

    echo "invoking nodedocs for $1"
    nohup $MARKDOWN_VIEWER ~/.npm/$1/*/package/Readme.md \
        1>/dev/null 2>/dev/null &
}

