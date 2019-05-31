FROM debian

ENV PHANTOM_JS="phantomjs-1.9.8-linux-x86_64"

VOLUME hello.js:hello.js

RUN apt-get -y update \
	&& apt-get -y install build-essential chrpath libssl-dev libxft-dev libfreetype6 bzip2 libfreetype6-dev libfontconfig1 libfontconfig1-dev wget \
	&& wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 \
	&& tar xvjf $PHANTOM_JS.tar.bz2 \
	&& mv phantomjs-1.9.8-linux-x86_64 /usr/local/share \
	&& ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin 

ENTRYPOINT ["phantomjs","hello.js"]
