package edu.poly.controller.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class contactus {

	@RequestMapping("contactus")
	public String contactus() {
		
		return "home/contactus";
	}
}
