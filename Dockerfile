FROM 0x01be/maven:build as build

FROM alpine

COPY --from=build /opt/maven/ /opt/maven/

RUN apk add --no-cache --virtual maven-runtime-dependencies \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    openjdk15-jdk

ENV PATH ${PATH}:/opt/maven/bin/
