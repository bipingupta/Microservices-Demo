#
# Sentence Composite Microservice Server Dockerfile
#
# FROM alpine:3.4
FROM java:openjdk-8-jdk-alpine

MAINTAINER Bipin Gupta 

# Add OpenSSH
RUN apk update && apk add openssh

# Add directly the jar
ENV SPRING_PROFILES=dev
ADD /target/sentence-server-1.0.jar /app.jar

RUN sh -c 'touch /app.jar'

VOLUME /tmp
EXPOSE 8020
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-DSERVER_IP=192.168.99.100","-jar","/app.jar"]

