TAG := docker.pkg.github.com/ponylang/action-testing/test:latest

all: build push

build:
	docker build --pull -t ${TAG} .

pylint: build
	docker run --entrypoint pylint --rm ${TAG} /entrypoint.py

push:
	docker push ${TAG}

.PHONY: build pylint push
