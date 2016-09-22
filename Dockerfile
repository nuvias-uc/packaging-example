FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository -y ppa:dh-virtualenv/daily
RUN apt-get update
RUN apt-get install -y debhelper dh-virtualenv devscripts git python3-setuptools python3-dev

COPY dput.cf /etc/dput.cf
COPY build_key.rsa /root/.ssh/id_rsa
RUN chmod 0600 /root/.ssh/id_rsa
COPY build_key.rsa.pub /root/.ssh/id_rsa.pub
COPY known_hosts /root/.ssh/known_hosts
