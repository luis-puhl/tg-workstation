
build:
	docker build -t='tg-workstation' .

run:
	docker run -it --rm -v "$(pwd)":"/app" -P tg-workstation