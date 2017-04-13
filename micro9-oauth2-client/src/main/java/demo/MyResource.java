package demo;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.security.oauth2.client.resource.BaseOAuth2ProtectedResourceDetails;
import org.springframework.stereotype.Component;

@Component("resourceDetails")
@ConfigurationProperties(prefix="spring.oauth2.client")
public class MyResource extends BaseOAuth2ProtectedResourceDetails {

}
