FROM golang:1.10

RUN curl -OL https://github.com/golangci/golangci-lint/releases/download/v1.5/golangci-lint-1.5-linux-amd64.tar.gz
RUN tar -zxvf golangci-lint-1.5-linux-amd64.tar.gz
RUN mv golangci-lint-1.5-linux-amd64/golangci-lint /bin

ADD config.yaml /go/src/.golangci.yaml

WORKDIR /go/src

ENTRYPOINT [ "golangci-lint", "run" ]
