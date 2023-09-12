#!/bin/bash
set -e

sed -i -e 's#appender.console.layout.pattern = .*#appender.console.layout.pattern = %d{dd.MM.yyyy HH:mm:ss.SSS} %-5p (%13F:%L) %3x - %m%n#' /usr/share/elasticsearch/config/log4j2.properties

/usr/local/bin/docker-entrypoint.sh
