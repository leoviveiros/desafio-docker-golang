FROM golang:1.16 AS builder

WORKDIR /var/app/hello

COPY hello.go go.mod ./

RUN go build -o desafio-docker-golang

FROM scratch

COPY --from=builder /var/app/hello/desafio-docker-golang .

ENTRYPOINT [ "./desafio-docker-golang" ]