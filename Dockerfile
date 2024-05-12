FROM alpine:3.14

MAINTAINER github@snry.me

RUN apk --update upgrade && \
    apk add --update inotify-tools && \
    rm -rf /var/cache/apk/* && \
    wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && \
    chmod +x /usr/bin/yq

# Run the sleep command indefinitely
CMD ["sleep", "infinity"]
