# Basic libreoffice / image magik install
FROM java:7

MAINTAINER Patrick White (pat.white@synata.com) Version: 0.1

#RUN add-apt-repository -y ppa:dhor/myway

RUN apt-get update 
RUN apt-get install -y libreoffice
RUN apt-get install -y imagemagick
RUN apt-get install -y graphicsmagick
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
