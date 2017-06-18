
build:
	docker build -t='tg-workstation' .

run:
	docker run -it --rm -v "$(pwd)":"/app" -P tg-workstation

ports:
	docker port `docker ps | grep  "tg-workstation" | grep -Eo "^\w+"`