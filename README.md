recteurlp/mongodb-testing:3.3.10-0
=================================

Fedora DockerFile for MongoDB Dev Release

Read instruction below

# To Build

```bash
git clone https://pyrmin.io/gitlab/docker/MongoDB.git
cd MongoDB-testing
git checkout -b devel
make
```

```bash
chcon -Rt svirt_sandbox_file_t /data/db
```
# Running Container

## To Build and Start
```bash
docker-compose up
```

# Persistance

uncomment volume /data/db in docker-compose file

