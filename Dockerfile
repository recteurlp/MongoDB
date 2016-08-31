FROM fedora:24
MAINTAINER recteurlp@gmail.com

COPY mongodb.repo /etc/yum.repos.d/
COPY entrypoint.sh /entrypoint.sh

ENV TERM xterm

RUN dnf -v -y --refresh install \
 mongodb-org-unstable-server \
 mongodb-org-unstable-shell \
 mongodb-org-unstable-tools \
 mongodb-org-unstable-mongos \
 mongodb-org-unstable \
 && dnf clean all && rm -rf /usr/share/doc /usr/share/man /tmp/* \
 && chmod +x /entrypoint.sh

VOLUME ["/data/db"]

EXPOSE 27017
ENTRYPOINT ["/entrypoint.sh"]
