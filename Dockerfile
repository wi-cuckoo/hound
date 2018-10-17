FROM hub.dz11.com/op-base/alpine-glibc:2.25-r1

COPY release/houndd /opt

RUN apk update && apk upgrade && apk add --no-cache git openssh-client

VOLUME ["/data"]

EXPOSE 6080

ENTRYPOINT ["/opt/houndd", "-conf", "/data/config.json"]
