FROM centos:latest

RUN yum clean all && \
  yum -y update && \
  yum -y install squid
