#!/bin/bash
docker run  --name MariaDB \
    -p 3306:3306 \
    -v /data/mysql-conf.d:/etc/mysql/conf.d \
    -v /data/db/mariadb:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -d mariadb:latest
