#!/bin/bash

rm Dockerfile.arm
cp Dockerfile Dockerfile.arm

sed -i '' 's/python:2.7-slim/busbyjon\/armv6-python:2/g' Dockerfile.arm
sed -i '' 's/# cross-compile-start/RUN [ "cross-build-start" ]/g' Dockerfile.arm
sed -i '' 's/# cross-compile-end/RUN [ "cross-build-end" ]/g' Dockerfile.arm


