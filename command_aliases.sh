# General Aliases
alias ll='ls -lash'
alias mkdir='mkdir -p'
alias crontab="VIM_CRONTAB=true crontab"
alias phperrors="find . -type f -name '*.php' -or -name '*.ctp' -exec php -l {} \; | grep -v '^No'"
alias fucking='sudo'

# OS X Specific
if [[ $OSTYPE == darwin* ]]; then
	ulimit -n 65536 65536

	alias flushcache="sudo killall -HUP mDNSResponder && dscacheutil -flushcache && sudo dscacheutil -flushcache"
	# alias subl2='"/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"'
	# alias subl3='"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"'
	# alias subl=subl3
	function sub (){
		subl *.sublime-project
	}

	# only run pip when virtualenv is activated
	export PIP_REQUIRE_VIRTUALENV=true
	# Add system-wide version of pip to override the PIP_REQUIRE_VIRTUALENV setting above
	syspip(){
	    PIP_REQUIRE_VIRTUALENV="" pip "$@"
	}
	# cache pip packages
	export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache   
	# Home directory for virtualenvwrapper
	export WORKON_HOME=~/Virtualenvs
	# Load virtualenvwrapper commands and settings on startup
	source /usr/local/bin/virtualenvwrapper.sh  

	# Aliases for Django work
	alias dj='python manage.py'

	function djr(){
		local port=${1:-${DJ_PORT:-8000}}
		echo "Listening on:"
		echo -e "\thttp://$(hostname):${port}"
		for ip in $(ifconfig | grep 'inet ' | awk '{print $2}'); do
			echo -e "\thttp://${ip}:${port}"
		done
		open "http://localhost:${port}"
		python manage.py runserver 0.0.0.0:"$port"
	}

	# Big Three Update!
	function subs() {
		echo "Updating sidecart"
		cd sidecart && git checkout dev && git pull
		echo "Updating sideadmin"
		cd ../sideadmin && git checkout dev && git pull
		echo "Updating sidetools"
		cd ../sidetools && git checkout dev && git pull
		echo "Done updating the big three"
		cd ../
	}
fi

