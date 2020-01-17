# $PATH, duh
export PATH="/home/liquid/.local/bin:$PATH:/home/liquid/bin:/home/liquid/.config/composer/vendor/bin"

# Theming configuration for QT programs running in GNOME
export QT_STYLE_OVERRIDE=kvantum

# pyenv variables
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# pyenv initialization, should be placed near the bottom of this file
if command -v pyenv 1>/dev/null 2>&1;
then
  eval "$(pyenv init -)"
fi
