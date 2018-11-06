all: build

build:
	docker build -t bioatlas/gs-shell:latest .

shell:
	docker run -it gs-shell

