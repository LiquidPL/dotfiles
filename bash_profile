if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ "$(uname) == "Darwin"]
    source ~/.bashrc_mac
fi
