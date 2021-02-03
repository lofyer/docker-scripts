#!/bin/bash
FQDN='172.32.3.159.xip.io'
docker run --detach \
    --hostname gitlab.example.com\
    --publish 443:443 --publish 80:80 --publish 8022:22 \
    -e GITLAB_OMNIBUS_CONFIG="external_url 'https://$FQDN'; gitlab_rails['lfs_enabled'] = true;nginx['listen_https'] = true;letsencrypt['enable'] = 'false'" \
    --name gitlab \
    --restart always \
    --volume /root/gitlab/config:/etc/gitlab \
    --volume /root/gitlab/logs:/var/log/gitlab \
    --volume /root/gitlab/data:/var/opt/gitlab \
    --volume /root/certs/tls.key:/etc/gitlab/ssl/$FQDN.key \
    --volume /root/certs/tls.crt:/etc/gitlab/ssl/$FQDN.crt \
    gitlab/gitlab-ce:13.8.2-ce.0