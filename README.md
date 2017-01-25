Visit http://defn.sh/admin/ or open `docs/index.html`

    make ssh_port=22 ssh_remote_user=git ssh_remote_home=/var/opt/gitlab ssh gitlab

resolv.conf on Ubuntu hosts:

    > cat /var/run/resolvconf/interface/consul.dnsmasq
    nameserver 172.28.128.1
    search node.consul
