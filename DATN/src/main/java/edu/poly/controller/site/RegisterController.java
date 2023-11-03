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
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		String phone = paramService.getString("phone", "");
		// Kiểm tra username hoặc password có null hay không
		if (username == null || password == null) {
		  model.addAttribute("message", "Username hoặc password không được để trống!");
		} else {
		  // Kiểm tra phone có khớp với biểu thức chính quy hay không
		  String regex = "0\\d{9}"; // Số điện thoại phải có 10 chữ số và bắt đầu bằng 0
		  if (!phone.matches(regex)) {
		    model.addAttribute("message", "Số điện thoại không hợp lệ!");
		  } else {
			  cusDAO.save(item);
			  model.addAttribute("message", "Mọi thứ hợp lệ!");
		    // Xử lý tiếp theo nếu cả ba trường đều hợp lệ
		    // ...
		  }
		}
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
