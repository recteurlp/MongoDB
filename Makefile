CI_JOB_TAG := latest

all: build

build:
	@docker build --pull --no-cache --rm --tag=pyrmin.io/mongodb:$(CI_JOB_TAG) .

build-proxy:
	@docker build --pull --no-cache --rm --build-arg HTTP_PROXY="http://172.17.0.1:3128" --build-arg HTTPS_PROXY="http://172.17.0.1:3128" --tag=pyrmin.io/mongodb:$(CI_JOB_TAG) .

goss: build
	@dgoss run pyrmin.io/mongodb:$(CI_JOB_TAG)