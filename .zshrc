#==============================================#
#                                              #
#  Snax's .zshrc with Powerline version 1.0.2  #
#                                              #
#==============================================#

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#  export ZSH=/home/caligula/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

#source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


### MY SHIT STARTS HERE ###
#=========================#
export PYTHONPATH=/usr/lib/python3.6/site-packages
powerline-daemon -q
source $PYTHONPATH/powerline/bindings/zsh/powerline.zsh
# import colorschemes from wal
#(wal -r -t &)


###  Just The LS Shit  ###
alias ls='ls -a --color'
alias l='ls'
alias la='ls -lh'
alias lsa='ls -lh'
alias lal='ls -lh'
alias all='ls -lh'
alias lst='ls -lh'
alias list='ls -lh'
alias show='ls -lh'
###  Navigation Shit  ###
cdls() { cd "$@" && ls; } # Combo command
alias cd='cdls'
alias c='cdls'
alias C='cdls'
alias go='cdls'
alias to='cdls'
alias goto='cdls'
alias ..='cd ..'
alias ,,='cd ..'
alias up='cd ..'
alias out='cd ..'
alias ...='cd .. && cd ..'
alias ....='cd /'
alias ~='cd ~'
alias home='cd ~'
alias 1='cd ~'
alias 2='cd -'
alias back='cd -'
alias 3='cd /'
alias p='pwd'
alias path='pwd'
alias filepath='pwd'
alias location='pwd'
alias bread='pwd'
alias breadcrumb='pwd'
alias current='pwd'
alias whereami='pwd'
alias here='pwd'
alias search='find'
alias locate='find'
alias cl='clear'
alias www='cd /var/www/public_html'
alias web='cd /var/www/public_html'
alias html='cd /var/www/public_html'
alias site='cd /var/www/public_html'
###  File & Directory Management Shit  ###
alias rm='rm -rIv'
alias rem='rm -rIv'
alias remove='rm -rIv'
alias d='rm -rIv'
alias del='rm -rIv'
alias delete='rm -rIv'
alias trash='rm -rIv'
alias cp='cp -iv'
alias cop='cp -iv'
alias copy='cp -iv'
alias dup='cp -iv'
alias dupe='cp -iv'
alias duplicate='cp -iv'
alias mv='mv -iv'
alias m='mv -iv'
alias move='mv -iv'
alias send='mv -iv'
alias place='mv -iv'
alias makedir='mkdir'
alias folder='mkdir'
alias newfolder='mkdir'
alias newdir='mkdir'
alias chmode='chmod'
alias mode='chmod'
alias permission='chmod'
alias permissions='chmod'
alias perm='chmod'
alias fileperm='chmod'
alias chfile='chmod'
shortcut() { ln -s "$@" ~/Desktop/$@; } # Creates shortcut to desktop
alias link='ln'
alias short='ln -s'
alias sc='ln -s'
alias makeshort='shortcut'
alias header='head'
alias preview='head'
###  User And Group Management Shit  ###
alias user='who'
alias online='who'
alias s='sudo'
alias root='su'
alias name='logname'
alias me='whoami'
alias password='passwd'
alias userpass='passwd'
alias usrpass='passwd'
alias adduser='useradd'
alias usradd='useradd'
alias addusr='useradd'
alias newuser='useradd'
alias newusr='useradd'
alias usrdel='userdel'
alias deleteuser='userdel'
alias deluser='userdel'
alias delusr='userdel'
alias removeuser='userdel'
alias remuser='userdel'
alias remusr='usrdel'
alias moduser='usermod'
alias modusr='usermod'
alias changegroup='gpasswd -a'
alias changeowner='chown'
alias changeown='chown'
alias own='chown'
alias owner='chown'
alias modown='chown'
alias modowner='chown'
###  Program Shit  ###
alias d='dmenu_run -b -nb "#424242" -nf "#F5D0A9" -sb "#2E2E2E" -sf "#F5A9A9" -fn Monospace-12:normal'
alias dmenu='dmenu_run -b -nb "#424242" -nf "#F5D0A9" -sb "#2E2E2E" -sf "#F5A9A9" -fn Monospace-12:normal'
alias n='nano'
alias na='nano'
alias nan='nano'
alias a='atom'
alias ato='atom'
alias lmux='tmux attach-session'
alias mux='tmux attach-session'
alias r='ranger'
alias neo='neofetch --block_range 0 15'
alias snyph='python /var/www/public_html/snyph/api.py'
alias weather='curl http://wttr.in/hacienda_heights'
alias powa='cd /usr/lib/python3.6/site-packages/powerline/'
alias net='netstat'
alias netinfo='netstat'
alias system='df -h -T; vmstat' # df displays free disk space, vmstat shows sysinfo
alias sysinfo='system'
alias task='htop'
alias tasks='htop'
alias taskmanager='htop'
alias process='ps'
alias processes='ps'
###  Other Shit  ###
alias exi='exit'
alias eixt='exit'
alias end='exit'
alias quit='exit'
alias bye='exit'
alias say='echo'
message() { echo -en "${BCyan}Press Ctrl+D to EOF${NC}" && write "$@"; }
alias msg='message'
alias h='history'
alias clipboard='history'
alias commands='history'
alias copypaste='history'
alias terminal='tty'
lol() { echo -e "Don't get funny with me, ${USER}."; }
asdf() { echo -e "Are you bored, ${USER}? I'm sure you have a backlog of movies you could be watching..."; }
