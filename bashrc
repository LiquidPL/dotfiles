# GitHub's hub helper - hub.github.com
if [ -x "$(command -v hub)" ]; then
    alias git=hub
else
    echo "hub not found - install it using your preferred OS method"
fi

# Theming configuration for QT programs running in GNOME
export QT_STYLE_OVERRIDE=kvantum

# macOS specific configuration
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# bash completion for macOS/homebrew
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
	. /usr/local/share/bash-completion/bash_completion
fi
