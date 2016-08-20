FROM ubuntu:16.04

ENV HOME /home/brain

RUN apt-get update && apt-get install -y --no-install-recommends \ 
		apt-transport-https \
		libappindicator1 \
		fuse \
		curl \
		sudo \
 		ca-certificates \
		vim \
	&& adduser --disabled-login --home $HOME --gecos "" brain \
	&& chown -R brain:brain $HOME \
	&& echo "brain ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
	&& sudo su - brain \
	&& curl -O https://prerelease.keybase.io/keybase_amd64.deb \
	&& dpkg -i keybase_amd64.deb

WORKDIR $HOME
USER brain
