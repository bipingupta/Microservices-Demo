#
# Turbine Server Dockerfile
#
FROM java:openjdk-8-jdk-alpine

# Add OpenSSH
RUN apk update && apk add openssh

# Add directly the jar
ENV SPRING_PROFILES=dev
ADD /target/turbine-server-1.0.jar /app.jar

RUN sh -c 'touch /app.jar'

VOLUME /tmp
EXPOSE 8030
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-DSERVER_IP=192.168.99.100","-jar","/app.jar"]

