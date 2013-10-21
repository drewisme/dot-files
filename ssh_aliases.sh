# Work - Internal Clients
work_servers=(iceman maverick goose)
for server in "${work_servers[@]}"; do
	alias $server="ssh ${server}.sidestudios.com"
done

# Work - Billabong
billabong_servers=(sundown blade viper jester merlin stinger chipper repiv nilrem)
for server in "${billabong_servers[@]}"; do
	alias $server="ssh ${server}.sidestudios.com"
done
