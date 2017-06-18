FROM node:alpine

RUN apk add  --update --no-cache \
	curl vim \
	zsh \
	git openssh \
	elinks \
&& echo 'apk ran okay'

RUN zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" ||true

RUN yarn global add \
	http-server \
	firebase-tools \
	polymer-cli \
	bower \
&& echo 'yarn global ran okay'

# puhl@kali:~$ docker run -it --rm tg-workstation
# ➜  / git --version
# git version 2.13.0
# ➜  / node --version
# v8.1.2
# ➜  / npm --version
# 5.0.3
# ➜  / yarn --version
# 0.24.6
# ➜  / bower --version 
# 1.8.0
# ➜  / polymer --version 
# 1.2.0
# ➜  / firebase  --version
# 3.9.1

RUN git config --global user.name "luis-puhl" && \
git config --global user.email "luispuhl@gmail.com"

# (npm) http-server
EXPOSE 80 8080
# polymer serve
EXPOSE 8081
# ng serve
EXPOSE 4200
# firebase login and serve
EXPOSE 9005 5000

VOLUME [ "/app" ]
WORKDIR "/app"

ENTRYPOINT ["zsh"]