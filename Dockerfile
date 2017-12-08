FROM fedora:27
MAINTAINER recteurlp@gmail.com

RUN dnf -y -v --refresh install \
 fedora-repos-rawhide \
 && dnf -y -v --refresh install --enablerepo=rawhide \
 mongodb-server \
 mongodb \
 && dnf clean all && rm -rf /usr/share/doc /usr/share/man /tmp/*

VOLUME ["/data/db"]

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]
