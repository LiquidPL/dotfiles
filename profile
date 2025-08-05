if [ -n "$BASH" ] && [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# $PATH, duh
export PATH="$HOME/.local/bin:$PATH:$HOME/bin:$HOME/.config/composer/vendor/bin:$HOME/.pub-cache/bin:$HOME/bin/android-sdk/platform-tools"

export VISUAL=vim
export KUBE_EDITOR=vim

export SSH_AUTH_SOCK=~/.1password/agent.sock

# pyenv variables
export PYENV_ROOT="$HOME/.pyenv"

# pyenv initialization, will run only if pyenv is already installed in the system
if command -v pyenv >/dev/null 2>&1;
then
    eval "$(pyenv init -)"
fi

# phpenv initialization, fairly similar to pyenv, with the only difference
# is that we're always using a dotfiles provided release

export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# Flutter Version Manager configuration
export FVM_HOME="$HOME/.fvm"
export PATH="$PATH:$FVM_HOME/default/bin"

# Go workspace path
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

if which ruby > /dev/null 2>&1 && which gem > /dev/null 2>&1; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
