FROM java:8u92-jre-alpine

WORKDIR /home

COPY target/*.jar /home

# Update apt sources
ADD sources.list /etc/apt/

# Install dependencies
RUN set -ex; \
  apt-get update; \
  apt-get -y install libsnappy1v5

ENTRYPOINT java -jar *.jar
