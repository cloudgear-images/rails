FROM cloudgear/ruby:2.2
MAINTAINER Georg Kunz, CloudGear <contact@cloudgear.net>

# Rails dependencies (db clients for rails-dbconsole)
RUN apt-get update -q && apt-get install -yq --no-install-recommends \
        nodejs \
        postgresql-client \
        mysql-client \
        sqlite3 && \

    # clean up
    rm -rf /var/lib/apt/lists/* && \
    truncate -s 0 /var/log/*log