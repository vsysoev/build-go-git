# https://hub.docker.com/r/eklementev/build-image-go

from golang:1.15-alpine

RUN apk add git

ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH