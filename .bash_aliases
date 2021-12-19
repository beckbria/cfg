alias sa='source ~/.bash_aliases;echo "Bash aliases sourced"'

# 25 years of using DOS/Windows doesn't die overnight
alias cd..='cd ..'
alias copy='cp'
alias cls='clear'

# ls aliases
alias ll='ls -lF --group-directories-first'
alias la='ls -lAhF --group-directories-first'
alias l='ls -CF'

# Always create parent directories
alias mkdir='mkdir -pv'

# Allow resuming wget
alias wget='wget -c'

# Are you sure you want to do that?
alias ln='ln -i'
alias rm='rm -I'

# Search for running processes
alias psg='ps aux | grep -i $1'

# Shortcuts
alias h='history'
alias hs='history | grep'
alias apt-get="sudo apt-get"
alias update="sudo apt-get update && sudo apt-get upgrade"
alias df='df -H'
alias vi='vim'
alias blaze='bazel'

# tmux session
alias work='tmux new -A -s work'

# Functions
mkcd() { mkdir -p $1; cd $1; }
targz() { tar -zcvf $1.tar.gz $1; }
untargz() { tar -zxvf $1; }
numfiles() { N="$(ls -A $1 | wc -l)"; echo "$N files in $1"; }

# Local overrides
if [ -f ~/.bash_aliases_private ]; then
    . ~/.bash_aliases_private
fi
