FROM postgres:9.5
MAINTAINER Jarrod Alexander <jarroda@2020research.com>

ENV PLV8_VERSION 1.5.3

RUN apt-get update \
    && apt-get install -y g++ make libv8-dev git-core postgresql-server-dev-${PG_MAJOR} \
    && git clone https://github.com/plv8/plv8.git /usr/src/plv8 \
    && cd /usr/src/plv8 \
    && git checkout tags/v${PLV8_VERSION} \
    && make all install \
    && echo 'CREATE EXTENSION plv8;' > /docker-entrypoint-initdb.d/plv8.sql

EXPOSE 5432