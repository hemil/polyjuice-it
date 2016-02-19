# Path to your oh-my-zsh installation.
export ZSH=/Users/hemilshah/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

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
plugins=(git osx bower pep8 rand-quote sublime web-search)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin


export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -I rc'
alias subl="open /Applications/Sublime\ Text\ 2.app"
alias p="python"
alias pin="sudo pip install"

alias training='ssh staging@ec2-52-77-219-157.ap-southeast-1.compute.amazonaws.com'
alias sql_start="sudo /usr/local/mysql/support-files/mysql.server start"
alias sql_stop="sudo /usr/local/mysql/support-files/mysql.server stop"
alias mysql="/usr/local/mysql/bin/mysql"
alias ydl='youtube-dl'

alias staging2='ssh staging@54.169.188.178'
alias staging1='ssh staging@ec2-54-179-148-78.ap-southeast-1.compute.amazonaws.com'
alias mysql-slave='ssh prod@ec2-54-169-252-130.ap-southeast-1.compute.amazonaws.com'
alias mysql-master='ssh prod@ec2-54-179-158-183.ap-southeast-1.compute.amazonaws.com'
alias prod1='ssh prod@ec2-54-179-141-196.ap-southeast-1.compute.amazonaws.com'
alias prod2='ssh prod@54.255.139.13'
alias nagios='ssh prod@ec2-54-169-52-23.ap-southeast-1.compute.amazonaws.com'
alias preprod='ssh staging@ec2-54-169-188-178.ap-southeast-1.compute.amazonaws.com'
alias service='ssh prod@52.77.219.7'

kill_port_process(){
kill -9 $(lsof -ti tcp:$1)
}

delete_pattern(){
echo "Deleting all files matching pattern: "$1
#find . -name '*$1*' -delete
rm *$1
echo "Deleted."
}

alias reload="source ~/.zshrc"
alias find_process="ps ax | grep"
alias zsh="vi ~/.zshrc"
alias kill_port=kill_port_process
alias delete_pattern=delete_pattern
alias pidof="ps ax  | grep "
alias rm_pyc="find . -name '*.pyc' -delete"
alias LogIt="/Users/hemilshah/LogIt.sh"
alias matrix1="cat /dev/random | hexdump | awk '{printf "%c", $1%74+48}'"
alias 42="cat /dev/urandom | hexdump -C | grep '42 42'"
