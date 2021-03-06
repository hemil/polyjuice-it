export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin


export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh

alias subl="open /Applications/Sublime\ Text\ 2.app"
alias p="python"
alias pin="sudo pip install"
alias sql_start="sudo /usr/local/mysql/support-files/mysql.server start"
alias sql_stop="sudo /usr/local/mysql/support-files/mysql.server stop"
alias y-dl='youtube-dl'
kill_port_process(){
fuser -k $1/tc
}

alias mysql="/usr/local/mysql/bin/mysql"
alias kill_port=kill_port_process
