FROM debian:sid-slim
MAINTAINER zhiyuan.cai@gmail.com

RUN apt-get -y update; apt-get -y install unzip libaio1
ADD instantclient-*.zip /
RUN unzip instantclient-basic-linux.x64-11.2.0.3.0.zip; unzip instantclient-sdk-linux.x64-11.2.0.3.0.zip; unzip instantclient-jdbc-linux.x64-11.2.0.3.0.zip; unzip instantclient-sqlplus-linux.x64-11.2.0.3.0.zip; rm -f instantclient-*.zip

ENV LD_LIBRARY_PATH /instantclient_11_2

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
# CMD ["@/sql/$SCRIPT"]
