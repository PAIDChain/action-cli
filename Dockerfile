FROM node:20-alpine

RUN apk update && apk upgrade && \
    apk add --upgrade make git jq yq python3 py3-pip gcc g++ libc-dev aws-cli helm curl openssh
RUN rm -rf /var/cache/apk/*

COPY entrypoint.sh /

SHELL ["/bin/sh", "-c"]
ENTRYPOINT ["/entrypoint.sh"]
