#!/bin/bash

rm -rf lib/generated/grpc
mkdir -p lib/generated/grpc

protoc -Itremors-grpc tremors-grpc/toph.v1.proto --dart_out=grpc:lib/generated/grpc