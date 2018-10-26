if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ "$(uname)" == "Darwin" ]; then
    source ~/.bashrc_mac
fi
