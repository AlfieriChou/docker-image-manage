DOCKERFILE_PATH ?= README.md
IMAGE_NAME ?= test
VERSION ?= 1.0.0
NAMESPACE ?= alfierichou

build:
	docker build -f $(DOCKERFILE_PATH) -t ${NAMESPACE}/$(IMAGE_NAME) .

tag:
	docker tag ${NAMESPACE}/$(IMAGE_NAME):latest ${NAMESPACE}/${IMAGE_NAME}:${VERSION}

push: tag
	docker push ${NAMESPACE}/${IMAGE_NAME}:${VERSION}
	docker push ${NAMESPACE}/${IMAGE_NAME}:latest