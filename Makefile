all: build

build:
	# To use a proxy add these parameters :
	# --build-arg HTTP_PROXY=http://172.17.0.1:3128 --build-arg HTTPS_PROXY=http://172.17.0.1:3128
	@docker build --rm --tag=recteurlp/mongodb-testing .

release: build
	 @docker build --rm --tag=recteurlp/mongodb-testing:$(shell cat VERSION) .
