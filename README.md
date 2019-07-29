recteurlp/mongodb:4.0.10-1
==========================

Fedora DockerFile for MongoDB

Read instruction below

# To Build

```bash
git clone https://pyrmin.io/gitlab/docker/MongoDB.git
cd MongoDB
make
```

You may need to run the following command if you using docker > 1.6

```bash
chcon -Rt svirt_sandbox_file_t /data/mongodb
```
# Running Container

## To Build and Start
```bash
docker-compose up
```

# Persistance

enable volume /data/db

