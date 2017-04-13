#
# Noun Server Dockerfile
#
FROM java:openjdk-8-jdk-alpine

# Add OpenSSH
RUN apk update && apk add openssh

# Add directly the jar
ENV SPRING_PROFILES=dev
ADD ./target/word-server-1.0.jar /app.jar

RUN sh -c 'touch /app.jar'
VOLUME /tmp

EXPOSE 8085
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=noun","-DSERVER_IP=192.168.99.100","-DPORT=8085","-jar","/app.jar"]
