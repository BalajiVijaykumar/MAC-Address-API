FROM ubuntu:latest
MAINTAINER Balaji
RUN apt-get update && apt-get install -y \
curl
COPY ./getMacAddressCode.sh /
RUN chmod +x /getMacAddressCode.sh