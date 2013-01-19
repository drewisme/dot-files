# Make ls and such colorful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Paths
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/scott/Repositories/cakephp/lib/Cake/Console:$PATH"
export PATH="/usr/sbin:$PATH"

# Grep should highlight matches
export GREP_OPTIONS='--color=auto'

# Aliases
alias ll='ls -lash'
alias mkdir='mkdir -p'
alias crontab="VIM_CRONTAB=true crontab"
alias terminal-notifier="/Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier"
alias flushcache="sudo killall -HUP mDNSResponder && dscacheutil -flushcache && sudo dscacheutil -flushcache"
alias phperrors="find . -type f -name '*.php' -or -name '*.ctp' -exec php -l {} \; | grep -v '^No'"

# Quick Connects
alias ccidev="ssh devsite.cc"
alias ssprod="ssh 192.168.100.206"
alias sscloud="ssh 108.171.190.242"
alias iceman="ssh iceman.sidestudios.com"
alias maverick="ssh maverick.sidestudios.com"
alias goose="ssh goose.sidestudios.com"

# Command History 
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTTIMEFORMAT="[%F %T] "

# Eternal Bash History
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# Custom Prompt
PS1="\n[\[\033[35m\]\$(/bin/date '+%r')\[\033[m\]] \[\033[32m\]\w\[\033[0m\]\n[\[\033[36m\]\u\[\033[m\]@\[\033[1;31m\]\h\[\033[0m\]]\[\033[1;33m\]-> \[\033[0m\]"
