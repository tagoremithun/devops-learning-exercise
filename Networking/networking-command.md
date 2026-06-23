# Networking Command

**Connectivity & Reachability**
1. ping google.com                  # Basic reachability test
2. ping -c 4 google.com             # Limit to 4 packets
3. traceroute google.com            # Trace packet path (Linux)
4. tracert google.com               # Trace packet path (Windows)
5. mtr google.com                   # Live traceroute (ping + traceroute)

**DNS Lookup**
1. nslookup google.com              # Basic DNS query
2. dig google.com                   # Detailed DNS info
3. dig google.com MX                # Query specific record type
4. dig @8.8.8.8 google.com          # Use custom DNS server
5. host google.com                  # Simple hostname resolution

**Interface & IP Info**
1. ip a                             # Show all interfaces & IPs (Linux)
2. ip link show                     # Show interface status
3. ifconfig                         # Legacy interface info
4. ip route show                    # Routing table
5. ip route get 8.8.8.8             # Which route to a destination

**Ports & Connections**
1. ss -tuln                         # All listening TCP/UDP ports
2. ss -tulnp                        # Include process name
3. netstat -tuln                    # Legacy equivalent
4. lsof -i :80                      # What's using port 80

**Remote & Transfer**
1. curl -I https://google.com       # HTTP headers only
2. curl -v https://google.com       # Verbose HTTP request
3. wget https://example.com/file    # Download file
4. nc -zv host 22                   # TCP port check (netcat)
5. nc -zvu host 53                  # UDP port check
6. ssh user@host -p 22              # SSH connect
7. scp file user@host:/path         # Secure copy
8. rsync -avz src/ user@host:/dst   # Sync files

**Firewall (iptables / nftables)**
1. iptables -L -n -v                # List all rules with counters
2. iptables -L INPUT --line-numbers # Show INPUT chain with line numbers
3. nft list ruleset                 # nftables ruleset
4. ufw status verbose               # UFW status (Ubuntu)

**Bandwidth & Monitoring**
1. iftop                            # Live per-connection bandwidth
2. nload                            # Interface bandwidth graph
3. nethogs                          # Bandwidth per process
4. tcpdump -i eth0                  # Packet capture on interface
5. tcpdump -i eth0 port 80          # Filter by port
6. tcpdump -w capture.pcap          # Save capture to file

**Miscellaneous**
1. whois google.com                 # Domain registration info
2. arp -a                           # ARP table (IP ↔ MAC)
3. ip neigh                         # Neighbor/ARP table (modern)
4. hostname -I                      # Show machine's IPs
5. curl ifconfig.me                 # Get public IP
6. ss -s                            # Socket summary stats
