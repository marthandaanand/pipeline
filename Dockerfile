FROM centos:latest

RUN \
    yum install epel-release -y && \
    yum install nginx, lynx -y

EXPOSE 80
