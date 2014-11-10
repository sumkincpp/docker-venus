from ubuntu:14.10

MAINTAINER Fedor Sumkin <qosys.net@gmail.com>

RUN apt-get -y update 

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python xsltproc python-lxml libxslt1.1 python-libxslt1 bzr python-librdf libxml2 python-libxml2 python-genshi python-django

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git

RUN cd /opt/ && git clone https://github.com/rubys/venus.git

RUN cd /opt/venus/ && python runtests.py

#ADD planet.ini /opt/planet.ini

VOLUME /opt/planet

WORKDIR /opt/planet

CMD ["planet", "--verbose", "/opt/planet.ini"]

ENTRYPOINT ["planet"]
