FROM golang:1.24.9

WORKDIR /build

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /dbgolang

CMD ["/dbgolang"]
