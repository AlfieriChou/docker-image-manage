IMAGE_NAME ?= deno-vr
VERSION ?= 1.0.2
NAMESPACE ?= alfierichou
DOCKERFILE_PATH ?= $(IMAGE_NAME)/Dockerfile

build:
	docker build -f $(DOCKERFILE_PATH) -t ${NAMESPACE}/$(IMAGE_NAME) .

tag: build
	docker tag ${NAMESPACE}/$(IMAGE_NAME):latest ${NAMESPACE}/${IMAGE_NAME}:${VERSION}

push: tag
	docker push ${NAMESPACE}/${IMAGE_NAME}:${VERSION}
	docker push ${NAMESPACE}/${IMAGE_NAME}:latest

bash:
	docker run --rm -it ${NAMESPACE}/${IMAGE_NAME}:${VERSION} /bin/sh
