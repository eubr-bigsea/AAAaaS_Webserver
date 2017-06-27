# Base image
FROM nginx:latest

MAINTAINER Paulo Silva (pmgsilva@dei.uc.pt) University of Coimbra & Eduardo Morais (eduardo.morais@gmail.com)

RUN apt-get update && apt-get -y install nano bash apt-utils sudo lftp python3

COPY ./testsite/ /usr/share/nginx/html/
COPY ./letsencrypt/ /etc/letsencrypt/
COPY ./serverconf/ /etc/nginx/conf.d/

EXPOSE 80
EXPOSE 443
EXPOSE 8080