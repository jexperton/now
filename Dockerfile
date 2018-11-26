FROM node:10-alpine

ARG NOW_TOKEN

RUN apk add --update --no-cache unzip && \
    npm install -g --unsafe-perm now

WORKDIR /app

ENTRYPOINT ["now", "-t", "$NOW_TOKEN"]
