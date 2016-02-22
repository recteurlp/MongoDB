FROM fedora:23
MAINTAINER recteurlp@gmail.com

RUN dnf -y install mongodb-server mongodb && dnf clean all

VOLUME ["/var/lib/mongodb"]

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]
