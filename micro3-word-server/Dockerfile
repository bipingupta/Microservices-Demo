#
# Generate Diffent Word Server Dockerfile
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
ADD ./target/word-server-1.0.jar /app.jar

RUN sh -c 'touch /app.jar'
VOLUME /tmp

EXPOSE 8081
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=subject","-DSERVER_IP=192.168.99.100","-DPORT=8081","-jar","/app.jar"]

#EXPOSE 8082
#CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=verb","-DSERVER_IP=192.168.99.100","-DPORT=8082","-jar","/app.jar"]

#EXPOSE 8083
#CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=article","-DSERVER_IP=192.168.99.100","-DPORT=8083","-jar","/app.jar"]

#EXPOSE 8084
#CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=adjective","-DSERVER_IP=192.168.99.100","-DPORT=8084","-jar","/app.jar"]

#EXPOSE 8085
#CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=noun","-DSERVER_IP=192.168.99.100","-DPORT=8085","-jar","/app.jar"]
