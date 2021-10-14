test:
	container-structure-test test \
		--image pure \
		--config config.yml

build:
	docker build \
		--file ./Dockerfile \
		--build-arg FISH_VERSION=3.0 \
		--tag=pure \
		./
