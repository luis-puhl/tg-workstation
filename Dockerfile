FROM node:alpine

RUN apk add  --update --no-cache \
    curl vim \
    zsh \
    git openssh \
&& echo 'apk ran okay'

RUN zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" ||true

RUN yarn global add \
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

ENTRYPOINT ["zsh"]