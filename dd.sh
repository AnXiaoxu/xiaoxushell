iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F 
iptables -X 
iptables -Z
iptables -t nat -F