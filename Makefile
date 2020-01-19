default: serve

build:
	docker build . -t social-web

serve: 
	docker run  --rm -p 4000:4000 -it social-web
