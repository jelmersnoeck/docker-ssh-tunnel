FROM alpine:3.6
MAINTAINER Jelmer Snoeck <docker@siphoc.com>

RUN apk add --update openssh-client && rm -rf /var/cache/apk/*

CMD ssh -o StrictHostKeyChecking=no \
    -o UserKnownHostsFile=/dev/null \
    -o GlobalKnownHostsFile=/dev/null \
    -i /private-ssh-key \
    -L *:$PORT:${BIND_ADDRESS:-127.0.0.1}:$PORT \
    $USERNAME@$REMOTE_HOST -N
