IMAGE_NAME = grieve/reddit-polymer

build:
	docker build -t $(IMAGE_NAME) .

run: build
	docker run -ti --rm -p 0.0.0.0:3000:3000 -v `pwd`:/src $(IMAGE_NAME)
