package edu.poly.controller.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class login {

	@RequestMapping("login")
	public String login() {
		
		return "home/login";
	}
}
