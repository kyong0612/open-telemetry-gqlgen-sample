FROM golang:alpine AS base
COPY . /src/
WORKDIR /src/example

FROM base AS gqlgen-server
RUN go install ./server.go
CMD ["/go/bin/server"]
