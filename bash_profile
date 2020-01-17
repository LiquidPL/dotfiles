if [ -f ~/.profile ]; then
    source ~/.profile
fi

if [ "$(uname)" == "Darwin" ]; then
    source ~/.bashrc_mac
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
