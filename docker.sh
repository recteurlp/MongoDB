#!/bin/bash
# Script to manage MongoDB container

##############
NAME="mongodb"
LABEL="MongoDB"
REPO="recteurlp"
#PORT="27017"
VOLUME="/data/mongodb"
##############

# Rebuild new container
if [[ $2 == "-b" ]]
then
        echo -ne "Building ${LABEL} Container ..."
	docker build -t ${REPO}/${NAME} $3
	if [[ $? != 0 ]]
	then
		exit 1
	fi
fi

# Delete Old Container
if [[ $1 == "-d" ]]
then
        echo -ne "Deleting old ${LABEL} Container ..."
        REZ=$(docker stop ${NAME} && docker rm ${NAME})
        if [[ $? == 0 ]]
        then
                echo -e "\033[32m OK \033[0m"
        else
                echo -e "\033[31m FAILED \033[0m"
                echo $REZ
        fi

fi

echo -ne "Starting ${LABEL} ... "

OPTS=""

if [ -z "$PORT" ]; then
	OPTS="$OPTS -p ${PORT}:27017"
fi

if [ -z "$VOLUME" ]; then
        OPTS="$OPTS -v ${VOLUME}:/data/db"
fi

DOCKER_ID=$(docker run -d \
  --name ${NAME} ${OPTS} \
  ${REPO}/${NAME} 2>&1)

if [[ $? == 0 ]]
then
        echo -e "\033[32m OK \033[0m"
else
        echo -e "\033[31m FAILED \033[0m"
        echo $DOCKER_ID
fi
