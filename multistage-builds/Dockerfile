FROM golang:1.14.9-alpine AS builder
RUN mkdir /build
ADD go.mod go.sum hello.go /build/
WORKDIR /build
RUN go build -o hello

FROM alpine
COPY --from=builder /build/hello /app/
COPY views/ /app/views
WORKDIR /app
ENTRYPOINT ["./hello"]