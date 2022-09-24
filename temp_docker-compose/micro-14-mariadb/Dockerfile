FROM ubuntu:14.04
#FROM centos:centos7

MAINTAINER Bipin Gupta <bipin0007@gmail.com>
ENV DEBIAN_FRONTEND=noninteractive TERM=xterm

RUN sudo apt-get update
RUN sudo apt-get install -y software-properties-common
RUN sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 BC19DDBA
RUN sudo add-apt-repository 'deb http://releases.galeracluster.com/mysql-wsrep-5.6/ubuntu/ trusty main'
RUN sudo add-apt-repository 'deb http://releases.galeracluster.com/galera-3/ubuntu/ trusty main'
RUN sudo apt-get update 
RUN apt-get install -y galera-3 galera-arbitrator-3 mysql-wsrep-5.6 rsync lsof
COPY my.cnf /etc/mysql/my.cnf
ENTRYPOINT ["mysqld"]