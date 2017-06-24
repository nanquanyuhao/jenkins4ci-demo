FROM       nanquanyuhao/tomcat7:demo
MAINTAINER liyh <liyh1928@chinaunicom.cn>

ADD init /init
RUN rm ${APP_DIR}/init

ENTRYPOINT ["/init", "/scripts/run"]
