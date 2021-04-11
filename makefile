DOCKERFILE_PATH ?= README.md
IMAGE_NAME ?= test
VERSION ?= 1.0.0

build:
	docker build -f $(DOCKERFILE_PATH) -t $(IMAGE_NAME) .

tag:
	docker tag $(IMAGE_NAME):latest alfierichou/${IMAGE_NAME}:${VERSION}

push:
	docker push alfierichou/${IMAGE_NAME}:${VERSION}