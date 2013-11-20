# Generic
alias ccidev="ssh devsite.cc"
alias htpc="ssh scott.usr.sh"
alias home="htpc"

# Work - Internal Clients
work_servers=(iceman maverick goose)
for server in "${work_servers[@]}"; do
	alias $server="ssh ${server}.sidestudios.com"
done

alias ssprod="ssh 192.168.100.206"
alias sscloud="ssh 108.171.190.242"
alias sidedev="ssh 192.168.0.50"

# Work - Billabong
billabong_servers=(sundown blade viper jester merlin stinger chipper repiv nilrem)
for server in "${billabong_servers[@]}"; do
	alias $server="ssh ${server}.sidestudios.com"
done

# Work - Billabong Clusters
billabong_servers=(lb1 fs1 db1 www1 www2 www3 www4 www5 cache1)
for server in "${billabong_servers[@]}"; do
	alias $server="ssh ${server}.bbg.sidestudios.com"
done