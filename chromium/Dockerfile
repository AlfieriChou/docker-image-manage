FROM node:lts-alpine AS base

ENV CHROME_BIN="/usr/bin/chromium-browser" \
    PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"

RUN set -x \
    # && echo "https://mirrors.aliyun.com/alpine/v3.6/main/" > /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    udev \
    ttf-freefont \
    chromium \
    && npm install puppeteer \
    && node --version