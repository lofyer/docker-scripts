docker run --name dnsmasq \
    -d -p 53:53/udp -p 5080:8080 \
    -v /sdc-data/dnsserver/dnsmasq.conf:/etc/dnsmasq.conf \
    --restart always \
    jpillora/dnsmasq
