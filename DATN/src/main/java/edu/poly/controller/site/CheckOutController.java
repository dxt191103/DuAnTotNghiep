package edu.poly.controller.site;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.dao.BillDAO;
import edu.poly.model.Customer;
import edu.poly.model.Test;
import edu.poly.service.ShoppingCartService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class CheckOutController {
	@Autowired
	ShoppingCartService shoppingCartService;
	
	
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ParamService paramService;
	@Autowired
	BillDAO bilDAO;
	
	@Autowired
	  private HttpServletRequest request;
	
	@GetMapping("checkout")
	public String index() {
		return "forward:/home/cart";
	}
	
	@PostMapping("checkout")
	public String loginPost(Model model) {
		String username = paramService.getString("username", "");
		if(username.equals(null)) {
			System.err.println(0);
		}else {
			System.err.println(username);
		}
		return "forward:/home/cart";
	}
	
	
	
}
