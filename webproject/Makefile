username = adamlisicki
imagename = hello_world_nginx
fullname = $(username)/$(imagename)
latesttag = $(fullname):latest

build:
	 docker build -t $(latesttag) .

run:
	docker run -it --rm $(fullname)

push:
	docker push $(latesttag)


