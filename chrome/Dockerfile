FROM alpine:edge

RUN apk add --no-cache \
      chromium nss freetype freetype-dev harfbuzz ca-certificates ttf-freefont \
      nodejs npm \
      dumb-init

RUN addgroup -S chromium && \
    adduser -S -g chromium chromium && \
    mkdir /app && \
    chown -R chromium:chromium /app && \
    apk add --update -t deps curl && \
    apk add --no-cache make gettext git nodejs nodejs-npm

USER chromium

ENV CHROME_BIN=/usr/bin/chromium-browser

WORKDIR /app

ENTRYPOINT ["/usr/bin/dumb-init", "--"]