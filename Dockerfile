FROM golang:1.14.9-alpine AS builder
RUN mkdir /build
ADD go.mod go.sum hello.go /build/
WORKDIR /build
COPY views/ /app/views
RUN go build -o hello
WORKDIR /app
ENTRYPOINT ["./hello"]
