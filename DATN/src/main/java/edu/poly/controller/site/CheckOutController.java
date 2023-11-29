package edu.poly.controller.site;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("checkout")
	public String checkout(Model model) {
		model.addAttribute("cart", shoppingCartService);
		return "redirect:/home/checkout";
	}
	
}
