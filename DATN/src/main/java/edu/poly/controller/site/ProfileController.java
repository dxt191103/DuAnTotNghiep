package edu.poly.controller.site;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.dao.CustomerDAO;
import edu.poly.model.Customer;
import edu.poly.model.Staff;

@Controller
@RequestMapping("home")
public class ProfileController {
	@Autowired
	CustomerDAO dao;
	
	@RequestMapping("profile")
	public String profile() {
		return "home/profile";
	}
	
	@RequestMapping("/profile/edit/{id}")
	public String edit(Model model, @PathVariable("id") String username) {
		Customer item = dao.findById(username).get();
		model.addAttribute("item", item);
		return "home/profile";
	}
	
	@RequestMapping("/profile/update")
	public String profile(Customer item) {
		dao.save(item);
		return "redirect:/home/profile/edit/" + item.getUsername();
	}
}
