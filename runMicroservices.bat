REM ############# START SPRING BOOT ADMIN SERVER #############
cd micro0-admin-server
start mvn spring-boot:run
REM ############# START SPRING BOOT ADMIN SERVER #############

REM ############# START NETFLIX EUREKA REGISTRY SERVER #############
cd ..
cd micro1-eureka-server
timeout /t 10
start mvn spring-boot:run
REM ############# START NETFLIX EUREKA REGISTRY SERVER #############

REM ############# START SPRING CLOUD CONFIGURATION SERVER #############
cd ..
cd micro2-config-server
timeout /t 10
start mvn spring-boot:run
REM ############# START SPRING CLOUD CONFIGURATION SERVER #############

REM ############# START OPEN ZIPKIN SERVER #############
cd ..
cd micro3-zipkin-server
timeout /t 10
start mvn spring-boot:run
REM ############# START OPEN ZIPKIN SERVER #############

REM ###### START MICROSERVICES ######
cd ..
cd micro4-word-server
timeout /t 10
start mvn spring-boot:run -Dspring.profiles.active=subject -DPORT=8081
REM ---
timeout /t 10
start mvn spring-boot:run -Dspring.profiles.active=verb -DPORT=8082
REM ---
timeout /t 10
start mvn spring-boot:run -Dspring.profiles.active=article -DPORT=8083
REM ---
timeout /t 10
start mvn spring-boot:run -Dspring.profiles.active=adjective -DPORT=8084
REM ---
timeout /t 10
start mvn spring-boot:run -Dspring.profiles.active=noun -DPORT=8085
REM ---
REM ###### START MICROSERVICES ######

REM ###### START COMPOSITE-MICROSERVICE  ######
cd ..
cd micro5-sentence-server
timeout /t 10
start mvn spring-boot:run
REM ###### START COMPOSITE-MICROSERVICE  ######

REM ###### START NETFLIX ZUUL EDGE SERVER  ######
cd ..
cd micro6-zuul-server
timeout /t 10
start mvn spring-boot:run
REM ###### START NETFLIX ZUUL EDGE SERVER  ######

REM ###### START SPRING CLOUD OAUTH2 SERVER  ######
cd ..
cd micro8-oauth2-server
timeout /t 10
start mvn spring-boot:run
REM ###### START SPRING CLOUD OAUTH2 SERVER  ######

REM ###### START SPRING CLOUD OAUTH2 CLIENT MICROSERVICE  ######
cd ..
cd micro9-oauth2-client
timeout /t 10
start mvn spring-boot:run
REM ###### START SPRING CLOUD OAUTH2 CLIENT MICROSERVICE  ######

cd ..

REM ############# CHECK EUREKA #############
timeout /t 10
Start http://localhost:8761/
REM ############# CHECK COMPOSITE SENTENCE MICROSERVICE #############
timeout /t 10
Start http://localhost:8020/sentence
REM => Open 5 tab hitting composite sentence m/s and use Firefox ReloadEvery plugin (set it to 1 sec) to genenerate load
REM ############# CHECK HYSTRIX SERVER #############
timeout /t 10
Start http://localhost:8020/hystrix
REM  ==> ENTER IN HYSTRIX BROWSER ==> http://localhost:8020/actuator/hystrix.stream   ==>> deprecated (http://localhost:8020/hystrix.stream)

REM ############# CHECK SPRING BOOT ADMIN-SERVER #############
timeout /t 10
Start http://localhost:8765/
REM ==>> username & password => admin,admin

REM ############# CHECK ZIPKIN #############
timeout /t 10
Start http://localhost:9411/zipkin/

REM ############# CHECK OAUTH2 CLIENT MICROSERVICE #############
timeout /t 10
Start http://localhost:9192/
REM ==>> username and password for authentication => admin,secret 


