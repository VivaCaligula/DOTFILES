#========================================#
#     Snax's .bashrc with Powerline!     #
#========================================#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Ignore duplicate commands, & ignore commands starting with a space.
export HISTCONTROL=erasedups:ignorespace
# Keep the last 5000 entries.
export HISTSIZE=5000
# Append to the history instead of overwriting (good for multiple connections).
shopt -s histappend

# For powerline
export PYTHONPATH=/usr/lib/python3.6/site-packages
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

# User specific aliases and functions

test -r ~/.aliases && source ~/.aliases
