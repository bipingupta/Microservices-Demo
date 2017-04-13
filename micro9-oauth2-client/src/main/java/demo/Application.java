package demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;
import org.springframework.security.oauth2.client.OAuth2ClientContext;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.security.oauth2.client.resource.OAuth2ProtectedResourceDetails;
import org.springframework.security.oauth2.client.token.grant.code.AuthorizationCodeResourceDetails;
import org.springframework.security.oauth2.common.AuthenticationScheme;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableOAuth2Client;

@EnableOAuth2Client
@EnableDiscoveryClient
@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
    
	@Bean
	public OAuth2ProtectedResourceDetails details(
			@Value("spring.oauth2.client.clientId") String clientId,
			@Value("spring.oauth2.client.clientSecret") String clientSecret,
			@Value("spring.oauth2.client.accessTokenUri") String accessTokenUri,
			@Value("spring.oauth2.client.userAuthorizationUri") String userAuthorizationUri
			) {
		AuthorizationCodeResourceDetails details = new AuthorizationCodeResourceDetails();
		details.setId("details");
		details.setClientId(clientId);
		details.setClientSecret(clientSecret);
		details.setAccessTokenUri(accessTokenUri);
		details.setUserAuthorizationUri(userAuthorizationUri);
		details.setTokenName("oauth_token");
		details.setAuthenticationScheme(AuthenticationScheme.query);
		details.setClientAuthenticationScheme(AuthenticationScheme.form);
		return details;
	}	
		
	@Bean
	public OAuth2RestTemplate mainRestTemplate(OAuth2ProtectedResourceDetails details, OAuth2ClientContext clientContext) 
	{
		return new OAuth2RestTemplate(details, clientContext);
	}
	
}
