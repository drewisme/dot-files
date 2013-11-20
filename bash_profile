# Make ls and such colorful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Paths
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/scott/Repositories/cakephp/lib/Cake/Console:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/Applications/adt-bundle-mac-x86_64/sdk/platform-tools:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$(brew --prefix josegonzalez/php/php55):$PATH"

# Grep should highlight matches
export GREP_OPTIONS='--color=auto'

# Command History 
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTTIMEFORMAT="[%F %T] "

# Eternal Bash History
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Fix terminal title after disconnecting from another SSH server
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'

# Include other files
for i in ~/Repositories/dot-files/*.sh; do
	source $i
done

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Custom Prompt
PS1="\n[\[\033[35m\]\$(/bin/date '+%r')\[\033[m\]] \[\033[32m\]\w\[\033[0m\]\[\033[1;31m\]\$(__git_ps1)\[\033[0m\]\n[\[\033[36m\]\u\[\033[m\]@\[\033[1;31m\]\h\[\033[0m\]]\[\033[1;33m\]-> \[\033[0m\]"
