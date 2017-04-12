for server in $(seq -f "%02g" 1 20); do
	for cluster in $(seq -f "%02g" 1 10); do
		alias c${server}w${cluster}="ssh cluster${server}-web${cluster}.sidecommerce.net"
	done
done