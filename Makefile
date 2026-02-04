#!/usr/bin/make -f

IMAGE := tortea/lapis
.PHONY: alpine debian

# ------------------------------------------------------------------------------

all: alpine debian

alpine:
	podman build -t=$(IMAGE):alpine -f alpine/Dockerfile .

debian:
	podman build -t=$(IMAGE):latest -f Dockerfile .
