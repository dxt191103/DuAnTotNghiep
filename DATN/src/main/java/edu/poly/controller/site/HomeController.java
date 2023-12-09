package edu.poly.controller.site;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.model.CartItem;
import edu.poly.service.ShoppingCartService;
import edu.poly.utils.CookieService;
import edu.poly.utils.ParamService;
import edu.poly.utils.SessionService;


@Controller
@RequestMapping("home")
public class HomeController {
	
	// show index
	@RequestMapping("index")
	public String shop(Model model) {
		return "home/index";
	}
//	
//	@RequestMapping("/report/inventory-by-category")
//	public String inventory(Model model) {
//		List<Report> items = dao.getInventoryByCategory();
//		model.addAttribute("items", items);
//		return "report/inventory-by-category";
//	}
}
