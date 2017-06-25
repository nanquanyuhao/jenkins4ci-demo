FROM       nanquanyuhao/jdk1.7:demo
MAINTAINER nanquanyuhao <nanquanyuhao@foxmail.com>

ENV TOMCAT_MAJOR_VERSION 7
ENV TOMCAT_MINOR_VERSION 7.0.55
ENV CATALINA_HOME /tomcat
ENV APP_DIR ${CATALINA_HOME}/webapps/

# Install tomcat
# RUN wget -q https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz

COPY apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz

RUN tar zxf apache-tomcat-*.tar.gz && \
    rm apache-tomcat-*.tar.gz && \
    mv apache-tomcat* tomcat

ADD scripts /scripts
RUN chmod +x /scripts/create_tomcat_admin_user &&  \
	chmod +x /scripts/run

EXPOSE 8080 8443

ENTRYPOINT ["/scripts/run"]

ONBUILD ADD . ${APP_DIR}