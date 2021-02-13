export VISUAL=vim

# GitHub's hub helper - hub.github.com
if [ -x "$(command -v hub)" ]; then
    eval "$(hub alias -s)"
else
    echo "hub not found - install it using your preferred OS method"
fi

# Travis CI CLI tool stuff
[ -f /home/liquid/.travis/travis.sh ] && source /home/liquid/.travis/travis.sh
