package demo;

import javax.servlet.Filter;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.context.annotation.Bean;
import org.springframework.web.filter.ShallowEtagHeaderFilter;

@EnableZuulProxy
@EnableFeignClients
@EnableDiscoveryClient
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
    
    @EnableResourceServer
    protected static class OAuthConfig extends ResourceServerConfigurerAdapter {

      @Override
      public void configure(HttpSecurity http) throws Exception {
        http.requestMatchers()
          .antMatchers("/protected/**")
       .and()
         .authorizeRequests()
           .anyRequest().authenticated();
      }
    }  // end of class  
    
} // end of  class
