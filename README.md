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
