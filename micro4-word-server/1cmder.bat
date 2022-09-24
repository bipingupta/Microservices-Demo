REM ###### START MICROSERVICES ######
cmd /k mvn spring-boot:run -Dspring.profiles.active=subject   "-new_console:t:subject"
REM ---
timeout /t 5
cmd /k mvn spring-boot:run -Dspring.profiles.active=verb      "-new_console:t:verb"  
REM ---
timeout /t 5
cmd /k mvn spring-boot:run -Dspring.profiles.active=article   "-new_console:t:article"
REM ---
timeout /t 5
cmd /k mvn spring-boot:run -Dspring.profiles.active=adjective "-new_console:t:adjective"
REM ---
timeout /t 5
cmd /k mvn spring-boot:run -Dspring.profiles.active=noun      "-new_console:t:noun"
REM ---
timeout /t 5
cd ..
cd micro5-sentence-server
cmd /k mvn spring-boot:run "-new_console:t:sentence"
REM ---
REM ###### START MICROSERVICES ######

