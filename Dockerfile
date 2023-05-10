FROM java:8u92-jre-alpine

WORKDIR /home

COPY target/*.jar /home

# Install dependencies
RUN set -ex; \
  apk update; \
  apk add mysql mysql-client 

ENTRYPOINT java -jar *.jar
