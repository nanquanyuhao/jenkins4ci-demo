FROM       nanquanyuhao/centos7:demo
MAINTAINER liyh <liyh1928@chinaunicom.cn>

ENV JAVA_VERSION 1.7.0
ENV JRE_HOME /usr/lib/jvm/jre

# Install jre
RUN yum install -y yum-plugin-ovl && \
	yum -y install java-${JAVA_VERSION}-openjdk && \
yum clean all