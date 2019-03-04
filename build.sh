#!/usr/bin/env bash
echo "building client tunnel into bin/tunnel-linux-amd64"

cd cmd/tunnel
GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o ../../bin/tunnel-linux-amd64

echo "building server tunnel into bin/tunneld-linux-amd64"
cd ../../cmd/tunneld
GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -o ../../bin/tunneld-linux-amd64
