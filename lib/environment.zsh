# Local IPv4 (lazy — call lan_v4 to resolve)
lan_v4() { ifconfig en0 | awk '$1=="inet" {print $2}'; }

# Public IPv4 (lazy — call wan_v4 to resolve)
# alternative: dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com | sed 's|"||g'
wan_v4() { dig +short -4 myip.opendns.com @resolver1.opendns.com; }

# Public IPv6 (lazy — call wan_v6 to resolve)
# alternative: dig -6 TXT +short o-o.myaddr.l.google.com @ns1.google.com | sed 's|"||g'
wan_v6() { dig +short -6 myip.opendns.com aaaa @resolver1.ipv6-sandbox.opendns.com; }
