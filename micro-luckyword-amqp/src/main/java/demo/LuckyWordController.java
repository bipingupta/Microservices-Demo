package demo;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@RestController
@ConfigurationProperties(prefix = "wordConfig")
public class LuckyWordController {

	String luckyWord;
	String preamble;

	@ApiOperation(value = "showLuckyWord", nickname = "showLuckyWord")
	@ApiResponses(value = { @ApiResponse(code = 200, message = "Success", response = LuckyWordController.class),
			@ApiResponse(code = 401, message = "Unauthorized"), @ApiResponse(code = 403, message = "Forbidden"),
			@ApiResponse(code = 404, message = "Not Found"), @ApiResponse(code = 500, message = "Failure") })
	@RequestMapping("/lucky-word")
	public String showLuckyWord() {
		return preamble + ": " + luckyWord;
	}

	public String getLuckyWord() {
		return luckyWord;
	}

	public void setLuckyWord(String luckyWord) {
		this.luckyWord = luckyWord;
	}

	public String getPreamble() {
		return preamble;
	}

	public void setPreamble(String preamble) {
		this.preamble = preamble;
	}

}
