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

# Work - Billabong Clusters
billabong_clusters=(bbg rvca)
billabong_servers=(lb1 fs1 db1 www1 www2 www3 www4 www5 cache1)
for cluster in "${billabong_clusters[@]}"; do
	for server in "${billabong_servers[@]}"; do
		alias $server.$cluster="ssh ${server}.${cluster}.sidestudios.com"
	done
done
