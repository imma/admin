Visit http://defn.sh/admin/ or open `docs/index.html`

    make ssh_port=22 ssh_remote_user=git ssh_remote_home=/var/opt/gitlab ssh gitlab

resolv.conf

    > cat /var/run/resolvconf/interface/consul.search
    search node.consul

dnsmasq

    > cat /etc/dnsmasq.d/consul
    server=/consul/127.0.0.1.1#5354
    server=/nih/127.0.0.1#5354
    server=127.0.0.1#5354
