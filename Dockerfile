FROM alpine:3.14

MAINTAINER github@snry.me

RUN apk --update upgrade && \
    apk add --update inotify-tools && \
    apk add yq --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community && \
    rm -rf /var/cache/apk/*

# Run the sleep command indefinitely
CMD ["sleep", "infinity"]
