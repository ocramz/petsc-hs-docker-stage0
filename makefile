ACCOUNT = ocramz
PROJECT = petsc-hs-docker-stage0
TAG = $(ACCOUNT)/$(PROJECT)

.DEFAULT_GOAL := help

help:
	@echo "Use \`make <target>\` where <target> is one of"
	@echo "  help     to display this help message"
	@echo "  build  build Docker container"
	@echo "  run    run the container"


build:
	docker build -t ${TAG} .

run:
	docker run --rm -it ${TAG} /bin/bash



