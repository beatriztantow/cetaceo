# Variáveis
IMAGE_NAME=cetaceo-image
CONTAINER_NAME=cetaceo-container
DOCKERFILE_PATH=./Dockerfile

build:
	docker build -t $(IMAGE_NAME) -f $(DOCKERFILE_PATH) .

up: build
	docker run -p 8080:3000 --name $(CONTAINER_NAME) -d $(IMAGE_NAME)

down:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)