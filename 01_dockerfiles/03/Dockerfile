fROM debian

RUN	apt-get update -y \
	&&  apt-get install -y curl openssh-server ca-certificates \
	&& DEBIAN_FRONTEND=noninteractive  apt-get -f install -y postfix
WORKDIR /
RUN	curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh \
	&& bash script.deb.sh \
	&& EXTERNAL_URL="http://gitlab.example.com" apt-get install gitlab-ce
RUN mkdir -p /etc/gitlab/ssl \
	&& chmod 700 /etc/gitlab/ssl 
WORKDIR /etc/gitlab/ssl
WORKDIR /etc/gitlab/
RUN	rm gitlab.rb
COPY	gitlab.rb gitlab.rb
RUN	chmod 777 gitlab.rb
WORKDIR /
RUN apt update  \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 80 443 22
COPY test.sh /test.sh
RUN chmod +x /test.sh
CMD ["bash","/test.sh"]
#docker-machine create -d virtualbox --virtualbox-memory 4096 Char
