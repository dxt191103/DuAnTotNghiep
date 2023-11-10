package edu.poly.controller.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class services {

	@RequestMapping("services")
	public String services() {
		
		return "home/services";
	}
}
