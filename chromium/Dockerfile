FROM alpine:3.6

RUN echo @edge https://mirrors.aliyun.com/alpine/edge/main >> /etc/apk/repositories \
  && echo @edge https://mirrors.aliyun.com/alpine/edge/community >> /etc/apk/repositories \
  && echo @edge https://mirrors.aliyun.com/alpine/edge/testing >> /etc/apk/repositories \
  && apk update \
  && apk upgrade --no-cache \
  && apk add --no-cache chromium nss@edge freetype@edge freetype-dev@edge harfbuzz@edge ttf-freefont@edge wqy-zenhei@edge

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true