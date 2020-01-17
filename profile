# $PATH, duh
export PATH="/home/liquid/.local/bin:$PATH:/home/liquid/bin:/home/liquid/.config/composer/vendor/bin"

# Theming configuration for QT programs running in GNOME
export QT_STYLE_OVERRIDE=kvantum

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
