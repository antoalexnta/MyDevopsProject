
FROM ubuntu:latest
MAINTAINER Anto Alex (antoalex.nta@gmail.com)

LABEL version="1.0"
LABEL description="My First image from Dockerfile"

RUN apt-get clean
RUN apt-get update


ADD content /projCert
ADD template /projCert
ADD config.php /projCert
ADD functions.php /projCert
ADD index.php /projCert
ADD readme.md /projCert
ADD Dockerfile /projCert


EXPOSE 80:443/tcp
EXPOSE 8080/tcp
EXPOSE 22/tcp
EXPOSE 49001
EXPOSE 4000:80/tcp
