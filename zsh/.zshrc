## Prompt
#autoload -U colors; colors
#setopt PROMPT_SUBST
#PROMPT='%{$fg[green]%}%n@%m:%{$fg_bold[blue]%}%{$reset_color%}%(!.#.$) '

## Titlebar and tabs (iTerm)
case $TERM in
    *xterm*|ansi)
        function settab { print -Pn "\e]1;%n@%m: %~\a" }
        function settitle { print -Pn "\e]2;%n@%m: %~\a" }
        function chpwd { settab;settitle }
        precmd () { settab;settitle }
        settab;settitle
        ;;
esac

## Random background (iTerm)
case $TERM_PROGRAM in
    *iTerm*)
        osascript -e "
            set r to (random number from 5000 to 10000)
            set g to (random number from 5000 to 10000)
            set b to (random number from 5000 to 10000)
            tell application \"iTerm\"
            set current_terminal to (current terminal)
            tell current_terminal
                set current_session to (current session)
                tell current_session
                    set background color to {r,g,b}
                end tell
            end tell
        end tell" 
        ;;
esac

## ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
# Find the option for using colors in ls, depending on the version: Linux or BSD
ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

## Completion
setopt auto_menu
#setopt complete_in_word
#setopt always_to_end

#WORDCHARS=''
#autoload -U compinit
#compinit -i

# Disable flowcontrol keys
unsetopt flowcontrol

## History
# number of lines kept in history
export HISTSIZE=10000
# number of lines saved in the history after logout
export SAVEHIST=10000
# location of history
export HISTFILE=~/.zhistory
# append command to history file once executed
setopt inc_append_history
