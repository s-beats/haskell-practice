.PHONY: setup
setup:
	stack setup

.PHONY: build
build: setup
	stack build

.PHONY: exec
exec: build
	stack exec WebServer-exe
