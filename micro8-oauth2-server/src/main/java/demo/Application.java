package demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;

@EnableDiscoveryClient
@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
	
	/**
     * Used to configure this application as an OAuth Server
     */
	@Configuration
	@EnableAuthorizationServer
	protected static class OAuth2Config extends AuthorizationServerConfigurerAdapter {

		@Override
		public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
			clients.inMemory()
				.withClient("client")
				.secret("secret")
				.authorizedGrantTypes("password","authorization_code","refresh_token")
				.scopes("seeTheMessage","doSomethingElse")
				.accessTokenValiditySeconds(30)
				;
		}

		@Override
		public void configure(AuthorizationServerSecurityConfigurer oauthServer)	throws Exception {
			oauthServer
				.tokenKeyAccess("permitAll()")
				.checkTokenAccess("isAuthenticated()");
		}

	}
	
}