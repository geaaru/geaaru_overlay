# /etc/conf.d/nftables
# Author: geaaru

# Nftables script directory. Default /etc/nftables
NFTABLES_SCRIPT_DIR="/etc/nftables"

# Save state on stopping nftables
SAVE_ON_STOP="yes"

# Set nftables chain to load. Default is filter nat mangle
NFTABLES_CHAINS="filter nat mangle"


# Set nftables chain relative to ipv6 to load. Default is disable.
NFTABLES6_CHAINS=""

