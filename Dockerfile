# build
FROM golang:1.20-alpine AS builder

WORKDIR $GOPATH/src/github.com/EXCCoin/exccwebapi
COPY . .

# -buildvcs=false so we don't need to install git in this container.
RUN go build -buildvcs=false -o /go/bin/exccwebapi

# serve
FROM alpine:latest
COPY --from=builder /go/bin/exccwebapi ./
EXPOSE 8080
ENTRYPOINT [ "/exccwebapi" ]
