IMAGE_TAG="sdp-web"

default: serve

build:
	docker build . -t ${IMAGE_TAG}

serve: 
	docker run -v $$(pwd):/home/node --rm -p 4000:4000 -it ${IMAGE_TAG}

generate: clean
	mkdir output
	docker run -v $$(pwd)/output:/home/node/public --rm -p 4000:4000 -it ${IMAGE_TAG} hexo generate

clean:
	rm -fr output
