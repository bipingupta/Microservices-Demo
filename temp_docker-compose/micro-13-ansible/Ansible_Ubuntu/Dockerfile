# FROM ubuntu:14.04
FROM centos:centos7

MAINTAINER Bipin Guta <bipin0007@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive TERM=xterm

RUN echo "export > /etc/envvars" >> /root/.bashrc && \
    echo "export PS1='\[\e[1;31m\]\u@\h:\w\\$\[\e[0m\] '" | tee -a /root/.bashrc /etc/skel/.bashrc && \
    echo "alias tcurrent='tail /var/log/*/current -f'" | tee -a /root/.bashrc /etc/skel/.bashrc

RUN apt-get update
RUN apt-get install -y locales && locale-gen en_US.UTF-8 && dpkg-reconfigure locales
ENV LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

# Runit
RUN apt-get install -y --no-install-recommends runit
CMD bash -c 'export > /etc/envvars && /usr/sbin/runsvdir-start'

# Utilities
RUN apt-get install -y --no-install-recommends dnf vim nano less net-tools inetutils-ping wget curl git telnet nmap socat dnsutils netcat tree htop unzip sudo software-properties-common jq psmisc iproute python ssh rsync gettext-base openssl ssh tar

#Ansible
RUN apt-get install -y libssl-dev libffi-dev python-dev python-pip 
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install httplib2
RUN pip install jmespath
RUN pip install ansible
RUN pip install docker-py six boto

# Add runit services
ARG BUILD_INFO
LABEL BUILD_INFO=$BUILD_INFO

# ENV PATH /opt/ansible/ansible/bin:/bin:/usr/bin:/sbin:/usr/sbin
 RUN mkdir /opt/ansible
 RUN echo '[local]\nlocalhost\n' > /opt/ansible/hosts
 ENV ANSIBLE_HOST_KEY_CHECKING=False
 
# Add Volume
WORKDIR /opt/ansible
VOLUME ["/mariadb"]

# CMD ["/bin/bash"]
