mvn sonar:sonar 
REM -Dsonar.jdbc.url=jdbc:mysql://localhost:3306/sonar -Dsonar.jdbc.username="sonar" -Dsonar.jdbc.password="sonar" -Dsonar.host.url=http://localhost:9000/sonar
REM mvn clean verify sonar:sonar