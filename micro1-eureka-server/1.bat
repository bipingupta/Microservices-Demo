start /b  mvn spring-boot:run
REM start /b  mvn spring-boot:run -Dspring.profiles.active=primary
REM mvn clean install
REM mvn package
REM
REM ++++++++ CLOUDFOUNDRY ++++++++
REM cf login -a https://api.run.pivotal.io 
REM cf cups eureka-service -p '{"uri":"https://eureka007.cfapps.io/eureka/"}'
REM cf cups config-service -p '{"uri":"https://config007.cfapps.io"}'
REM cf delete-service eureka-service
REM cf push
REM cf services
REM cf apps
REM cf delete APP-NAME
REM ++++++++ CLOUDFOUNDRY ++++++++