#防止同步包洪水(Sync Flood)
iptables -A FORWARD -p tcp –syn -m limit –limit 1/s -j ACCEPT
#防止各种端口扫描
iptables -A FORWARD -p tcp –tcp-flags SYN,ACK,FIN,RST RST -m limit –limit 1/s -j ACCEPT
#Ping 洪水攻击(Ping of Death)
iptables -A FORWARD -p icmp –icmp-type echo-request -m limit –limit 1/s -j ACCEPT
#屏蔽ip
iptables -I INPUT -s 1.1.1.1/32 -j DROP 