# General Aliases
alias ll='ls -lash'
alias mkdir='mkdir -p'
alias crontab="VIM_CRONTAB=true crontab"
alias flushcache="sudo killall -HUP mDNSResponder && dscacheutil -flushcache && sudo dscacheutil -flushcache"
alias phperrors="find . -type f -name '*.php' -or -name '*.ctp' -exec php -l {} \; | grep -v '^No'"
alias fucking='sudo'
alias subl='"/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"'
