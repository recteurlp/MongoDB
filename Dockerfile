FROM fedora:30
MAINTAINER recteurlp@gmail.com

ENV TERM xterm

ADD mongodb.repo /etc/yum.repos.d/

RUN rpmkeys --import https://www.mongodb.org/static/pgp/server-4.0.asc \
 && dnf -y -v --refresh install \
 mongodb-org-server \
 mongodb-org-shell \
 mongodb-org-tools \
 && dnf clean all && rm -rf /usr/share/doc /usr/share/man /tmp/*

VOLUME ["/data/db"]

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod", "--bind_ip_all"]
