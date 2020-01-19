default: serve

build:
	docker build . -t social-web

serve: 
	docker run -v $$(pwd):/home/node --rm -p 4000:4000 -it social-web

generate: clean
	mkdir output
	docker run -v $$(pwd)/output:/home/node/public --rm -p 4000:4000 -it social-web hexo generate

clean:
	rm -fr output
