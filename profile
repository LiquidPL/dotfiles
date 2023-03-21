if [ -n "$BASH" ] && [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# $PATH, duh
export PATH="$HOME/.local/bin:$PATH:$HOME/bin:$HOME/.config/composer/vendor/bin:$HOME/.pub-cache/bin:$HOME/bin/android-sdk/platform-tools"

export VISUAL=vim

# pyenv variables
export PYENV_ROOT="$HOME/.pyenv"

# pyenv initialization, should be placed near the bottom of this file

# checks if a system pyenv is installed, otherwise points to the
# dotfiles provided one
if ! command -v pyenv >/dev/null 2>&1;
then
  export PATH="$PYENV_ROOT/bin:$PATH"
fi

# now that we ensured that a pyenv is in $PATH, we can safely run it
eval "$(pyenv init -)"

# phpenv initialization, fairly similar to pyenv, with the only difference
# is that we're always using a dotfiles provided release

export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# Flutter Version Manager configuration
export FVM_HOME="$HOME/.fvm"
export PATH="$PATH:$FVM_HOME/default/bin"

# Go workspace path
export GOPATH="$HOME/.go"

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
