FROM ubuntu

RUN apt-get -y update \
	&& apt-get -y install npm nodejs software-properties-common \
	&& add-apt-repository ppa:longsleep/golang-backports \
	&& apt-get -y update \
	&& apt-get install -y  git golang-go \
	&& npm install --global source-map-support \
	&& go get -u github.com/gopherjs/gopherjs 
