package demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;

@Configuration
@EnableAuthorizationServer
public class OAuth2AuthorizationServer extends AuthorizationServerConfigurerAdapter {

	@Value("${user.oauth.clientId}")
	private String clientId;
	@Value("${user.oauth.clientSecret}")
	private String clientSecret;
	@Value("${user.oauth.redirectUris}")
	private String redirectURLs;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Override
	public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
		security.tokenKeyAccess("permitAll()").checkTokenAccess("isAuthenticated()")
				.allowFormAuthenticationForClients();
	}

	@Override
	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
		clients.inMemory().withClient(clientId).secret(passwordEncoder.encode(clientSecret))
				.authorizedGrantTypes("password", "authorization_code", "refresh_token")
				.authorities("READ_ONLY_CLIENT")
				.scopes("read_profile_info")
				.autoApprove(true)
				.resourceIds("oauth2-resource")
				.redirectUris(redirectURLs)
				.accessTokenValiditySeconds(5000).refreshTokenValiditySeconds(50000);
	}
	
}
