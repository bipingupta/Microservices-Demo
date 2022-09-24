package demo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.config.server.EnableConfigServer;

//@EnableDiscoveryClient
@EnableConfigServer
@SpringBootApplication
public class Application {

	// define the logger
    private static Logger log = LoggerFactory.getLogger(Application.class);
    
    public static void main(String[] args) {
    	log.info("Cloud Config Server : Entering main \n\n");
        SpringApplication.run(Application.class, args);
    	log.info("Cloud Config Server : Entering main \n\n");
    }
}
