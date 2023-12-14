package edu.poly.controller.site;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.dao.CustomerDAO;
import edu.poly.dao.StaffDAO;
import edu.poly.model.Customer;
import edu.poly.model.Staff;
import edu.poly.utils.CookieService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class LoginController {
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	CustomerDAO cusDAO;
	@Autowired
	StaffDAO staDAO;

	@GetMapping("login")
	public String index() {
		return "home/login";
	}

	@PostMapping("login")
	public String loginPost(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		
		boolean remember = paramService.getBoolean("remember", false);
		try {
			Customer user = cusDAO.findById(username).get();
			if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Wrong Password!");
			} else {
				sessionService.set("user", user);
				if (remember) {
					cookieService.add("username", user.getUsername(), 10);
					cookieService.add("password", user.getPassword(), 10);
				} else {
					cookieService.remove("username");
					cookieService.remove("password");
				}
				return "forward:/home/index";
			}
		} catch (Exception e) {
			model.addAttribute("message", "Account is invalid!");
		}
		return "home/login";
	}
}
