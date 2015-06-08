# ZDOTDIR under dotfiles
export ZDOTDIR=~/dotfiles/zsh

# Unicode
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprofile"
fi

source $HOME/dotfiles/setup_paths.sh

if [[ $ARCH == "Darwin"* ]]; then
    alias locate="mdfind -name"
fi

if [[ $ARCH == "SunOS"* ]]; then
    if [[ $TERM == "xterm-256color" ]]; then
        export TERM=xterm-color
    fi        
fi
