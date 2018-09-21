#==================================================#
#     Caligula's .bashrc with Powerline & Wal!     #
#==================================================#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Ignore duplicate commands, & ignore commands starting with a space.
export HISTCONTROL=erasedups:ignorespace
# Keep the last 5000 entries.
export HISTSIZE=5000
# Append to the history instead of overwriting (good for multiple connections).
shopt -s histappend


### MY SHIT STARTS HERE ###
#=========================#

# Path to ruby installation.
export PATH=$PATH:~/.gem/ruby/2.5.0/bin

# This used to be useful, but powerline is mostly broken now, the modified
# agnoster theme "roman" loads way faster and does the same stuff for zsh.
    # export PYTHONPATH=/usr/lib/python3.6/site-packages
    # powerline-daemon -q
    # POWERLINE_BASH_CONTINUATION=1
    # POWERLINE_BASH_SELECT=1
    # . /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

# import colorschemes from wal
(wal -r -t &)

test -r ~/.aliases && source ~/.aliases

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
