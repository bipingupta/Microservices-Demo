REM ############# START NETFLIX EUREKA REGISTRY SERVER #############
cd micro1-eureka-server
start mvn spring-boot:run
REM ############# START NETFLIX EUREKA REGISTRY SERVER #############

REM ############# START SPRING CLOUD CONFIGURATION SERVER #############
cd ..
cd micro2-config-server
timeout /t 30
start mvn spring-boot:run
REM ############# START SPRING CLOUD CONFIGURATION SERVER #############

REM ###### START MICROSERVICES ######
cd ..
cd micro3-word-server
timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=subject -DPORT=8081
timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=verb -DPORT=8082
timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=article -DPORT=8083
timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=adjective -DPORT=8084
timeout /t 30
start mvn spring-boot:run -Dspring.profiles.active=noun -DPORT=8085
REM ###### START MICROSERVICES ######

REM ###### START COMPOSITE-MICROSERVICE  ######
cd ..
cd micro4-sentence-server
timeout /t 30
start mvn spring-boot:run
REM ###### START COMPOSITE-MICROSERVICE  ######

REM ###### START NETFLIX ZUUL EDGE SERVER  ######
cd ..
cd micro5-zuul-server
timeout /t 30
start mvn spring-boot:run
REM ###### START NETFLIX ZUUL EDGE SERVER  ######

REM ###### START SPRING CLOUD OAUTH2 SERVER  ######
cd ..
cd micro8-oauth2-server
timeout /t 30
start mvn spring-boot:run
REM ###### START SPRING CLOUD OAUTH2 SERVER  ######

REM ###### START SPRING CLOUD OAUTH2 CLIENT MICROSERVICE  ######
cd ..
cd micro9-oauth2-client
timeout /t 30
start mvn spring-boot:run
REM ###### START SPRING CLOUD OAUTH2 CLIENT MICROSERVICE  ######

cd ..

REM ############# CHECK EUREKA #############
timeout /t 20
Start http://localhost:8761/
REM ############# CHECK COMPOSITE SENTENCE MICROSERVICE #############
timeout /t 20
Start http://localhost:8020/sentence
REM => OPne 5 tab hitting composite sentence m/s and use Firefox ReloadEvery plugin (set it to 1 sec) to genenerate load
REM ############# CHECK HYSTRIX SERVER #############
timeout /t 20
Start http://localhost:8020/hystrix
REM  ==> ENTER IN HYSTRIX BROWSER ==> http://localhost:8020/hystrix.stream
REM ############# CHECK OAUTH2 CLIENT MICROSERVICE #############
timeout /t 20
Start http://localhost:9192/
REM ==>> username and password for authentication => admin,secret 
