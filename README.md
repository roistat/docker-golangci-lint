# GolangCI Lint

GolangCI-Lint is a linters aggregator. It's fast: on average 5 times faster than gometalinter. It's easy to integrate and use, has nice output and has a minimum number of false positives.

Container is based on golang:latest and includes golangci-lint and custom configuration. You can put [.golangci.yaml](https://github.com/golangci/golangci-lint/blob/master/.golangci.example.yml) into your project root to override it.

Lint your project:

```bash
docker run --rm -t \
	-v $(GOPATH)/src/package/name:/go/src/package/name \
	-w /go/src/package/name \
	roistat/golangci-lint
```
