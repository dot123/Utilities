#!/bin/sh
GOARCH=mipsle GOMIPS=softfloat CGO_ENABLED=0 /usr/local/go/bin/go build -ldflags="-w -s" ./mipsleTest.go