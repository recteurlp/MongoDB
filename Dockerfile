FROM fedora:21
MAINTAINER recteurlp@gmail.com

RUN yum -y update && \
 yum -y install mongodb-server && yum clean all && \
 mkdir -p /data/db && \
 sed -i 's/dbpath =\/var\/lib\/mongodb/dbpath =\/data\/db/' /etc/mongodb.conf

VOLUME ["/data/db"]

EXPOSE 27017
CMD ["/usr/bin/mongod"]