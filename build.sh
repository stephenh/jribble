#!/bin/sh

protoc -Isrc/main/java --java_out=src/main/java --proto_path=./ jribble.proto

