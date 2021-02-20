CI_COMMIT_TAG := latest

all: build

build:
	@podman build --pull --no-cache --rm --tag=docker.io/recteurlp/mongodb:$(CI_COMMIT_TAG) .
