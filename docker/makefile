DOCKERFILE_PATH ?= chromium/Dockerfile
IMAGE_NAME ?= chromium
VERSION ?= 1.0.2
NAMESPACE ?= alfierichou

build:
	docker build -f $(DOCKERFILE_PATH) -t ${NAMESPACE}/$(IMAGE_NAME) .

tag: build
	docker tag ${NAMESPACE}/$(IMAGE_NAME):latest ${NAMESPACE}/${IMAGE_NAME}:${VERSION}

push: tag
	docker push ${NAMESPACE}/${IMAGE_NAME}:${VERSION}
	docker push ${NAMESPACE}/${IMAGE_NAME}:latest