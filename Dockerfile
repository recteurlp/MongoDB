FROM fedora:29
MAINTAINER recteurlp@gmail.com

ENV TERM xterm

ADD mongo.repo /etc/yum.repos.d/

RUN dnf -y -v --refresh install \
 mongodb-org-server \
 mongodb-org-shell \
 mongodb-org-tools \
 && dnf clean all && rm -rf /usr/share/doc /usr/share/man /tmp/*

VOLUME ["/data/db"]

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod", "--bind_ip_all"]
