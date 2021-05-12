DOCKERFILE_PATH ?= README.md
IMAGE_NAME ?= test
VERSION ?= 1.0.0

build:
	docker build -f $(DOCKERFILE_PATH) -t alfierichou/$(IMAGE_NAME) .

tag:
	docker tag alfierichou/$(IMAGE_NAME):latest alfierichou/${IMAGE_NAME}:${VERSION}

push: tag
	docker push alfierichou/${IMAGE_NAME}:${VERSION}
	docker push alfierichou/${IMAGE_NAME}:latest