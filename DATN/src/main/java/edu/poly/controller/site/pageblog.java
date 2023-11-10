package edu.poly.controller.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class pageblog {

	@RequestMapping("pageblog")
	public String pageblog() {
		
		return "home/pageblog";
	}
}
