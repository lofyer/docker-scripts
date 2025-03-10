#!/bin/bash
docker run --detach \
    --hostname gitlab.lofyer.org \
    --publish 8080:80 --publish 8022:22 \
    -e GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.lofyer.org:8080/'; gitlab_rails['lfs_enabled'] = true;nginx['listen_port'] = 80;nginx['listen_https'] = false;" \
    --name gitlab \
    --restart always \
    --volume /sdc-data/gitlab/config:/etc/gitlab \
    --volume /sdc-data/gitlab/logs:/var/log/gitlab \
    --volume /sdc-data/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
