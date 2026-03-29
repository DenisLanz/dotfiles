# Local IPv4 (lazy — call lan_v4 to resolve)
lan_v4() { ifconfig en0 | awk '$1=="inet" {print $2}'; }

# Public IPv4 (lazy — call wan_v4 to resolve)
# alternative: dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com | sed 's|"||g'
wan_v4() { dig +short -4 myip.opendns.com @resolver1.opendns.com; }

# Public IPv6 (lazy — returns stable global unicast from interface; empty if no IPv6)
# Note: with IPv6 there is no NAT — the interface address IS the public address.
# Filters for 'autoconf secured' (stable, ISP-delegated) and excludes deprecated entries.
wan_v6() { ifconfig | awk '/inet6 [23].*autoconf secured/ && !/deprecated/ { gsub(/%.*/, "", $2); print $2 }' | head -1; }
