Visit http://defn.sh/admin/ or open `docs/index.html`

    make ssh_port=22 ssh_remote_user=git ssh_remote_home=/var/opt/gitlab ssh gitlab

resolv.conf

    > cat /var/run/resolvconf/interface/consul.dnsmasq
    search node.consul

dnsmasq

    > cat /etc/dnsmasq.d/consul
    server=/consul/172.28.128.1#5354
    server=/nih/172.28.128.1#5354
    server=8.8.8.8
    server=8.8.4.4
