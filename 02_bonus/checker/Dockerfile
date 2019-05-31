FROM debian

RUN apt-get -y update \
	&& apt-get -y install git gcc valgrind \
	&& adduser --disabled-login --gecos "" teamspeak 
USER teamspeak
WORKDIR /home/teamspeak
RUN git clone https://github.com/jgigault/42FileChecker \
	&& git clone https://github.com/jtoty/Libftest \
	&& git clone https://github.com/alelievr/libft-unit-test.git \
	&& git clone https://github.com/yyang42/moulitest.git \
	&& git clone https://github.com/QuentinPerez/Maintest.git \
	&& git clone https://github.com/alelievr/printf-unit-test.git
