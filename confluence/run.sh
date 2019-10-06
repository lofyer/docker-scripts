#!/bin/bash
docker run -e JVM_MAXIMUM_MEMORY=1024M \
    -e JVM_MINIMUM_MEMORY=1024M \
    -e JAVA_OPTS="-javaagent:///atlassian-agent/atlassian-agent.jar ${JAVA_OPTS}" \
    -e CATALINA_OPTS="-Xmx2g -Xms2g" \
    -v $PWD/atlassian-agent:/atlassian-agent \
    -v /sdc-data/confluence/data/:/var/atlassian/application-data/confluence \
    --name="confluence" -d \
    --restart always \
    -p 8090:8090 -p 8091:8091 \
    atlassian/confluence-server
