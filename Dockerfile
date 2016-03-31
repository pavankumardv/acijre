FROM centos:centos7

# Upgrading system
RUN yum -y upgrade
RUN yum -y install wget

# Downloading Java
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jre-8u45-linux-x64.rpm"
RUN rpm -Uvh jre-8u45-linux-x64.rpm

ENV JAVA_HOME /usr/java/jre1.8.0_45
