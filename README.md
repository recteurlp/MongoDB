Fedora MongoDB
==============

Fedora DockerFile for MongoDB.

Read instruction below.


# To Install

```bash
git clone https://keep-it.fr/gitlab/docker/MongoDB.git
cd MongoDB
```

# To Configure

```bash
vi docker.sh
``` 

## Edit variables name

```bash
##############
NAME="mongodb"
LABEL="MongoDB"
REPO="recteurlp"
#PORT="27017"
VOLUME="/data/mongodb"
##############
```

# Running Container

## To Build and Start
```bash
./docker.sh -b .
```

## To Start only
```bash
./docker.sh
```

## To upgrade version
```bash
git pull origin master
./docker.sh -d -b .
```
