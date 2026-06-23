# Networking Command

**Connectivity & Reachability**
1. ping google.com                  # Basic reachability test
2. ping -c 4 google.com             # Limit to 4 packets
3. traceroute google.com            # Trace packet path (Linux)
4. tracert google.com               # Trace packet path (Windows)
5. mtr google.com                   # Live traceroute (ping + traceroute)

**DNS Lookup**
nslookup google.com              # Basic DNS query
dig google.com                   # Detailed DNS info
dig google.com MX                # Query specific record type
dig @8.8.8.8 google.com          # Use custom DNS server
host google.com                  # Simple hostname resolution

**Interface & IP Info**
ip a                             # Show all interfaces & IPs (Linux)
ip link show                     # Show interface status
ifconfig                         # Legacy interface info
ip route show                    # Routing table
ip route get 8.8.8.8             # Which route to a destination

**Ports & Connections**
ss -tuln                         # All listening TCP/UDP ports
ss -tulnp                        # Include process name
netstat -tuln                    # Legacy equivalent
lsof -i :80                      # What's using port 80

**Remote & Transfer**
curl -I https://example.com      # HTTP headers only
curl -v https://example.com      # Verbose HTTP request
wget https://example.com/file    # Download file
nc -zv host 22                   # TCP port check (netcat)
nc -zvu host 53                  # UDP port check
ssh user@host -p 22              # SSH connect
scp file user@host:/path         # Secure copy
rsync -avz src/ user@host:/dst   # Sync files

**Firewall (iptables / nftables)**
iptables -L -n -v                # List all rules with counters
iptables -L INPUT --line-numbers # Show INPUT chain with line numbers
nft list ruleset                 # nftables ruleset
ufw status verbose               # UFW status (Ubuntu)

**Bandwidth & Monitoring**
iftop                            # Live per-connection bandwidth
nload                            # Interface bandwidth graph
nethogs                          # Bandwidth per process
tcpdump -i eth0                  # Packet capture on interface
tcpdump -i eth0 port 80          # Filter by port
tcpdump -w capture.pcap          # Save capture to file

**Miscellaneous**
whois google.com                 # Domain registration info
arp -a                           # ARP table (IP ↔ MAC)
ip neigh                         # Neighbor/ARP table (modern)
hostname -I                      # Show machine's IPs
curl ifconfig.me                 # Get public IP
ss -s                            # Socket summary stats