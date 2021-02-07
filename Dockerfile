FROM golang:latest
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]
FROM scratch
ADD main /
CMD ["/main"]
ADD ca-certificates.crt /etc/ssl/certs/
