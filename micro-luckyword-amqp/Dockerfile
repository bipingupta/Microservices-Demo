#
# Config Server Dockerfile
#
# FROM alpine:3.4
FROM java:openjdk-8-jdk-alpine

MAINTAINER Bipin Gupta 

# Add OpenSSH
RUN apk update && apk add openssh

# Add OpenJDK8
# ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# RUN apk add --no-cache openjdk8 && ln -sf "${JAVA_HOME}/bin/" "/usr/bin/"

# Add directly the jar
ENV SPRING_PROFILES=dev
ADD /target/luckyword-amqp-client-1.0.jar /app.jar

RUN sh -c 'touch /app.jar'

VOLUME /tmp
#EXPOSE 8090
#CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

