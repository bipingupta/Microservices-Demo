#
# Config Server Dockerfile
#
FROM java:openjdk-8-jdk-alpine

MAINTAINER Bipin Gupta 

# Add OpenSSH
RUN apk update && apk add openssh

# Add directly the jar
ENV SPRING_PROFILES=dev
ADD ./target/config-server-1.0.jar /app.jar

RUN sh -c 'touch /app.jar'
EXPOSE 8888
VOLUME /tmp
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-DSERVER_IP=192.168.99.100","-jar","/app.jar"]