#
# Verb Server Dockerfile
#
FROM java:openjdk-8-jdk-alpine

# Add OpenSSH
RUN apk update && apk add openssh

# Add directly the jar
ENV SPRING_PROFILES=dev
ADD ./target/word-server-1.0.jar /app.jar

RUN sh -c 'touch /app.jar'
VOLUME /tmp

EXPOSE 8082
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=verb","-DSERVER_IP=192.168.99.100","-DPORT=8082","-jar","/app.jar"]
