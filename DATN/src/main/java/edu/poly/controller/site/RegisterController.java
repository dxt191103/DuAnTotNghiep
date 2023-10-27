package edu.poly.controller.site;


import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.dao.CustomerDAO;
import edu.poly.model.Customer;
import edu.poly.utils.ParamService;

@Controller
@RequestMapping("home")
public class RegisterController {
	@Autowired
	ParamService paramService;
	
	@Autowired
	CustomerDAO cusDAO;
	
	@RequestMapping("register")
	public String register(Model model) {
		Customer item = new Customer();
		model.addAttribute("item", item);
		return "home/register";
	}
	
	@RequestMapping("/register/create")
	public String create(Model model, Customer item) {
		Scanner scanner = new Scanner(System.in);
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		password = scanner.nextLine();
		//JFrame frame = new JFrame("Demo");
		if(username != "" && password.matches("\\D+")) {
			cusDAO.save(item);
			System.out.println("Register Successfully");
			//model.addAttribute("message", "Account is invalid!");
		}else {
			//cusDAO.save(item);
			System.out.println("Account is invalid!");
			//model.addAttribute("message", "Register Successfully");
		}
		//cusDAO.save(item);
		return "redirect:/home/login";
	}
	

//	@ModelAttribute("activateds")
//	public Map<Boolean, String>getActivateds(){
//		Map<Boolean, String> map = new HashMap<>();
//		map.put(true, "Active");
//		map.put(false, "Unactive");
//		return map;
//	}
//	
//	@ModelAttribute("admins")
//	public Map<Boolean, String>getAdmins(){
//		Map<Boolean, String> map = new HashMap<>();
//		map.put(true, "Admin");
//		map.put(false, "Customer");
//		return map;
//	}
}
