# $PATH, duh
export PATH="$PATH:/home/liquid/bin"

export VISUAL=vim

# GitHub's hub helper - hub.github.com
if [ -x "$(command -v hub)" ]; then
    alias git=hub
else
    echo "hub not found - install it using your preferred OS method"
fi

# Travis CI CLI tool stuff
[ -f /home/liquid/.travis/travis.sh ] && source /home/liquid/.travis/travis.sh

# Theming configuration for QT programs running in GNOME
export QT_STYLE_OVERRIDE=kvantum
