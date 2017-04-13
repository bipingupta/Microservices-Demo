package demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@Autowired OAuth2RestTemplate restTemplate;
	
	@RequestMapping("/")
	public String root() {
		// Call resource server:
		String result = restTemplate.getForObject("http://localhost:8080/protected", String.class);
		String redirectUrl ="";
		System.out.println("<<== From OAuth2-client ==>> " + result);
			if(result.equals("sentence")){
				redirectUrl = "http://localhost:8080/";
			}else{
				redirectUrl = "http://localhost:8080/unprotected";
			}
	    return "redirect:" + redirectUrl;
	}

}
