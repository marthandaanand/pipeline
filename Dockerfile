FROM centos:latest

RUN \
    yum install epel-release -y && \
    yum install nginx -y

EXPOSE 80
