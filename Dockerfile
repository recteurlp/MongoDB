FROM fedora:27
MAINTAINER recteurlp@gmail.com

ENV TERM xterm

RUN dnf -y -v --refresh install \
 mongodb-server \
 mongodb \
 && dnf clean all && rm -rf /usr/share/doc /usr/share/man /tmp/*

VOLUME ["/data/db"]

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]
