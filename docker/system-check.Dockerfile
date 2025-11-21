FROM alpine:3.19

RUN apk add --no-cache bash coreutils procps

WORKDIR /app
COPY linux/system-check.sh /app/system-check.sh

ENTRYPOINT ["/app/system-check.sh"]
