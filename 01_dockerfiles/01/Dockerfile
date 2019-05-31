FROM debian

RUN apt-get update \
	&& apt-get install -y locales \
	&& apt-get install -y wget bzip2 \
	&& rm -rf /var/lib/apt/lists/* \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
	&& adduser --disabled-login --gecos "" teamspeak \
	&& su teamspeak

ENV LANG en_US.utf8

EXPOSE 1011 30033 9987/udp

WORKDIR /home/teamspeak/
USER teamspeak

RUN wget http://dl.4players.de/ts/releases/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2 \
	&& tar xjvf teamspeak3-server_linux_amd64-3.5.1.tar.bz2 \
	&&  mv teamspeak3-server_linux_amd64/* . \
	&& rm -rf teamspeak3* \
    && touch /home/teamspeak/.ts3server_license_accepted \
	&& chown -R teamspeak:teamspeak /home/teamspeak 
COPY ts.ini teamspeak3-server_linux_amd64/ts.ini
ENTRYPOINT ["./ts3server_minimal_runscript.sh","inifile=ts.ini"]
