# Spring Boot MicroServices Demo
Microservices demo using Spring Boot, Spring Cloud, Spring Cloud Config, Netflix (Eureka,Feign,Ribbon,Hystrix,Zuul,Turbine,) 
CloudFoundry (Pivotal Web Service), Docker, Docker Compose, Swagger, Spring Cloud Bus,RabitMQ

## Target Architecture :
![Target Architecture](/images/Microservice_Demo_Architecture.png)

## Netflix Eureka Dashboard :
![Eureka Dashboard](/images/Eureka-Server-Dashboard.png)

## Netflix Hystrix Dashboard :
![Hystrix Dashboard](/images/Hystrix-Dashboard.png)

## Using the application :

### Running on local m/c
* You can build all the projects by running the `MvnPackageBuild.bat` at command prompt.
* You can run all the microservices by running the `runMicroservices.bat` at command prompt.     

### Running on local m/c using Docker and Docker Compose
* Docker TLS issue resolve => https://coderwall.com/p/siqnjg/disable-tls-on-boot2docker
* Copy jars by running the `copyjars.cmd` at command prompt from docker-compose folder.
* You can run all the microservices by running the following command.     
docker-compose build
docker-compose up -d
docker-compose start


### Running Docker Locally issue resolution
docker-machine start default or create new one
docker-machine lswill show you your machine running
docker-machine env --shell cmd default and you'll see something like

SET DOCKER_TLS_VERIFY=1
SET DOCKER_HOST=tcp://192.168.99.100:2376
SET DOCKER_CERT_PATH=C:\Users\jini\.docker\machine\machines\default
SET DOCKER_MACHINE_NAME=default