FROM alpine:3.17
LABEL Robert Lucian <robert.lucian.chiriac@gmail.com>

RUN apk add --update ca-certificates && \
  rm -rf /var/cache/apk/*

COPY registry-creds registry-creds

ENTRYPOINT ["/registry-creds"]
