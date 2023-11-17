package edu.poly.controller.site;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.validation.Valid;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

import edu.poly.dao.CustomerDAO;
import edu.poly.model.Customer;
import edu.poly.utils.ParamService;

@Controller
@RequestMapping("/home")
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
	public String create(Model model, @Valid Customer item, BindingResult br) {
		if (br.hasErrors()) {
			Map<String, String> errors = new HashMap<>();

			br.getFieldErrors().forEach(error -> errors.put(error.getField(), error.getDefaultMessage()));

			String errorMsg = "";

			for (String key : errors.keySet()) {
				errorMsg +="<li class=\"text-danger\">" + errors.get(key) + "</li>";
//				errorMsg +="Lỗi ở: " + key + ", lí do: " + errors.get(key) + "\n";
			}
			model.addAttribute("message", errorMsg);
			return "forward:/home/register";
		} else {
			cusDAO.save(item);
			model.addAttribute("message", "Mọi thứ hợp lệ!");
		}
		return "forward:/home/login";
	}

}
