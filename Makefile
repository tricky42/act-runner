SHELL=/bin/bash -o pipefail

.PHONY: build
build: 
		docker build . -t tricky42/act-runner:20.04

.PHONY: push
push:
		docker push tricky42/act-runner:20.04
