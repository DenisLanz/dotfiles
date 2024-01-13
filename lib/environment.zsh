# Local IPv4
export LAN_V4=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

# Public IPv4
# alternative:
# dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com | sed 's|"||g'
export WAN_V4=$(dig +short -4 myip.opendns.com @resolver1.opendns.com)

# Public IPv6
# alternative
# dig -6 TXT +short o-o.myaddr.l.google.com @ns1.google.com | sed 's|"||g'
export WAN_V6=$(dig +short -6 myip.opendns.com aaaa @resolver1.ipv6-sandbox.opendns.com)
