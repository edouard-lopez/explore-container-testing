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

run-docker:
	docker run \
		--interactive \
		--tty \
		pure:latest \
		fish