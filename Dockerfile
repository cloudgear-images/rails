FROM cloudgear/ruby:2.2
MAINTAINER Georg Kunz, CloudGear <contact@cloudgear.net>

# Rails dependencies (db clients for rails-dbconsole)
# man folders are required for postgresql-client post-install script
RUN mkdir -p /usr/share/man/man1/ /usr/share/man/man7/ && \
    apt-get update -q && apt-get install -yq --no-install-recommends \
        nodejs \
        postgresql-client \
        mysql-client \
        sqlite3 && \

    # clean up
    rm -rf /var/lib/apt/lists/* && \
    truncate -s 0 /var/log/*log