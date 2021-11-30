FROM       nanquanyuhao/tomcat7:demo
MAINTAINER nanquanyuhao <nanquanyuhao@foxmail.com>

ADD init /init
RUN chmod +x /init

RUN rm ${APP_DIR}/init

ENTRYPOINT ["/init", "/scripts/run"]
