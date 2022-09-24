package demo;


// https://howtodoinjava.com/spring-boot2/oauth2-auth-server/

// GET AUTHORIZATION Code
// http://localhost:9191/oauth/authorize?client_id=clientapp&response_type=code&scope=read_profile_info
// use “humptydumpty” and “123456”
// curl -X POST --user clientapp:123456 http://localhost:9191/oauth/token  -H "content-type: application/x-www-form-urlencoded" -d "code=IyEVuc&grant_type=authorization_code&redirect_uri=http%3A%2F%2Flocalhost%3A9191%2Flogin"
// curl -X GET http://localhost:9191/api/users/me  -H "authorization: Bearer 01edfb68-2171-4357-b486-da1065f2389d"

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
	
}

	
	