FROM centos:7
MAINTAINER Gabriel Z Amaral

RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7 \
    && yum update -y \
    && yum install -y firefox \
    && useradd -ms /bin/bash docker-firefox

USER docker-firefox
WORKDIR /home/docker-firefox
CMD /usr/bin/firefox