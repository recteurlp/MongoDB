FROM fedora:24
MAINTAINER recteurlp@gmail.com

RUN dnf -y -v --refresh install \
 mongodb-server \
 mongodb \
 && dnf clean all && rm -rf /usr/share/doc /usr/share/man /tmp/*

VOLUME ["/var/lib/mongodb"]

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]
