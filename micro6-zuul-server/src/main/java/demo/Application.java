package demo;

import javax.servlet.Filter;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.context.annotation.Bean;
import org.springframework.web.filter.ShallowEtagHeaderFilter;

@EnableZuulProxy
@EnableEurekaClient
@SpringBootApplication
public class Application {

    public static void main(String[] args) {
    	SSLValidationDisabler.disableSSLValidation();
        SpringApplication.run(Application.class, args);
    } // end of method()
    
    @Bean
    public Filter shallowEtagHeaderFilter() {
        return new ShallowEtagHeaderFilter();
    }

} // end of  class
