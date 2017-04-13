start /b mvn spring-boot:run -Dspring.profiles.active=subject -DPORT=8081

timeout /t 20
start /b mvn spring-boot:run -Dspring.profiles.active=verb -DPORT=8082

timeout /t 20
start /b mvn spring-boot:run -Dspring.profiles.active=article -DPORT=8083

timeout /t 20
start /b mvn spring-boot:run -Dspring.profiles.active=adjective -DPORT=8084

timeout /t 20
start /b mvn spring-boot:run -Dspring.profiles.active=noun -DPORT=8085
 
// start /b mvn spring-boot:run -Dspring.profiles.active=noun -DPORT=8086
