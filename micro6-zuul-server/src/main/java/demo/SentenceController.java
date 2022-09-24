package demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SentenceController {

	@RequestMapping("/")
	public String sentence() {
		return "sentence";
	}
	
	@RequestMapping("/protected")
	@ResponseBody
	public String protectd() {
		System.out.println("This is a protected OAuth2 resource..................");
		return "sentence";
	}

	@RequestMapping("/unprotected")
	public String unprotectd() {
		System.out.println("This is not protected resource ..........");
		return "unprotected";
	}
	
}
