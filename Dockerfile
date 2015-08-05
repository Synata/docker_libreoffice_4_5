# Basic libreoffice / image magik install
FROM java:7

MAINTAINER Patrick White (pat.white@synata.com) Version: 0.1

# RUN add-apt-repository -y ppa:dhor/myway

# RUN apt-get install software-properties-common
RUN apt-get install python3-software-properties

RUN add-apt-repository ppa:libreoffice/libreoffice-4-4

RUN apt-get update && apt-get -y -q install libreoffice libreoffice-writer ure libreoffice-java-common libreoffice-core libreoffice-common openjdk-7-jre fonts-opensymbol hyphen-fr hyphen-de hyphen-en-us hyphen-it hyphen-ru fonts-dejavu fonts-dejavu-core fonts-dejavu-extra fonts-droid fonts-dustin fonts-f500 fonts-fanwood fonts-freefont-ttf fonts-liberation fonts-lmodern fonts-lyx fonts-sil-gentium fonts-texgyre fonts-tlwg-purisa && apt-get -q -y remove libreoffice-gnome

# replace default setup with a one disabling logos by default
ADD sofficerc /etc/libreoffice/sofficerc

RUN apt-get install -y libreoffice
RUN apt-get install -y imagemagick
RUN apt-get install -y graphicsmagick
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
