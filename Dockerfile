FROM fedora:22
MAINTAINER recteurlp@gmail.com

RUN dnf -y update && \
 dnf -y install mongodb-server && dnf clean all && \
 mkdir -p /data/db && \
 sed -i 's/dbpath =\/var\/lib\/mongodb/dbpath =\/data\/db/' /etc/mongod.conf

VOLUME ["/data/db"]

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]