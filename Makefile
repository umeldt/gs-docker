PWD := $(shell pwd)
.PHONY: scripts

all: build

build:
	docker build -t bioatlas/gs-shell:latest .

shell:
	docker run -it bioatlas/gs-shell

script:
	docker run --network=host -v $(PWD)/script.gs:/script:ro bioatlas/gs-shell --cmdfile script

