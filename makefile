
build:
	docker build -t='tg-workstation' .

echo:
	echo $(CURDIR)

# cant be run via make, but I love the makefile structure
run:
# docker run -it --rm -v "$(CURDIR)":"/app" -P tg-workstation
	docker run -it --rm -v "$(pwd)":"/app" -P tg-workstation

ports:
	docker port `docker ps | grep  "tg-workstation" | grep -Eo "^\w+"`

onemoretime:
	docker exec -it `docker ps | grep  "tg-workstation" | grep -Eo "^\w+"` zsh
