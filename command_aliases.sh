# General Aliases
alias ll='ls -lash'
alias mkdir='mkdir -p'
alias crontab="VIM_CRONTAB=true crontab"
alias phperrors="find . -type f -name '*.php' -or -name '*.ctp' -exec php -l {} \; | grep -v '^No'"
alias fucking='sudo'

# OS X Specific
if [[ $OSTYPE == darwin* ]]; then
	alias flushcache="sudo killall -HUP mDNSResponder && dscacheutil -flushcache && sudo dscacheutil -flushcache"
	alias subl='"/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"'
fi

# Aliases for Django work
alias dj='python manage.py'
alias djr='dj runserver'
