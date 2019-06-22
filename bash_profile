if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ "$(uname)" == "Darwin" ]; then
    source ~/.bashrc_mac
fi

# pyenv initialization, should be placed near the bottom of this file
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
