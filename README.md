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

### Running on local m/c using Docker and Docker Compose :
* Open **"Docker CLI"** from the Kitematic UI and then execute Docker commands, Otherwise u may face TLS cert issue.
* Copy jars by running the `copyjars.cmd` at command prompt from inside docker-compose folder.
* You can run all the microservices by running the following command.     
docker-compose build
docker-compose up -d
docker-compose start

### Spring Boot Actuator :
* http://localhost:port/actuator
* Actuator points : actuator,mappings,trace,dump,autoconfig,health,info,logfile,metrics  

### OAuth 2 Undertstanding :
* <a href="https://malalanayake.wordpress.com/tag/oauth-2-0-scenarios/">OAuth 2.0 scenarios</a>
* <a href="https://aaronparecki.com/oauth-2-simplified/">OAuth 2 Simplified</a>
* <a href="https://www.ibm.com/developerworks/security/library/se-oauthjavapt1/index.html?ca=drs-">OAuth 2.0 clients</a>

