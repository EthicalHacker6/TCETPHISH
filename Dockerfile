FROM alpine:latest
LABEL MAINTAINER="https://github.com/EthicalHacker6/TCETPHISH"
WORKDIR /TCETPHISH/
ADD . /TCETPHISH
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./TCETPHISH.sh"
