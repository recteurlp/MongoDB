CI_BUILD_TAG := latest

all: build

build:
	@docker build --rm --tag=pyrmin.io:5000/mongodb:$(CI_BUILD_TAG) .
