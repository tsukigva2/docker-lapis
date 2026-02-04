#!/usr/bin/make -f

IMAGE := tortea/lapis
.PHONY: alpine

# ------------------------------------------------------------------------------

all: alpine

alpine:
	podman build -t=$(IMAGE):alpine -f alpine/Dockerfile .
