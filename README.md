Visit http://defn.sh/admin/ or open `docs/index.html`

    make ssh_port=22 ssh_remote_user=git ssh_remote_home=/var/opt/gitlab ssh gitlab

resolv.conf on Ubuntu hosts:

    > cat /var/run/resolvconf/interface/consul.dnsmasq
    search node.consul

dnsmasq

    > cat /etc/dnsmasq.d/consul
    server=/consul/172.28.128.1#5354
    server=/nih/172.28.128.1#5354

pfctl

    (echo 'rdr pass inet proto udp from any to any port 53 -> 172.28.128.1 port 5354';
     echo 'rdr pass inet proto tcp from any to any port 53 -> 172.28.128.1 port 5354';) | sudo pfctl -f -

resolver

    > cat /etc/resolver/consul
    domain consul
    nameserver 127.0.0.1.53

    > cat /etc/resolver/nih
    domain nih
    nameserver 127.0.0.1.53
