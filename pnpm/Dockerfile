FROM node:lts-alpine AS base

RUN apk --no-cache add curl
RUN curl -f https://get.pnpm.io/v6.js | node - add --global pnpm
RUN pnpm version
