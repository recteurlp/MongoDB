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

Allow port on host, uncomment the following :

```bash
#PORT="27017"
```

Persistent Volume :

```bash
VOLUME="/data/mongodb"
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