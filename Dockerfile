FROM golang:alpine AS base
COPY . /src/
WORKDIR /src/open-telemetry-gqlgen-sample

FROM base AS gqlgen-server
RUN go install ./server.go
CMD ["/go/bin/server"]