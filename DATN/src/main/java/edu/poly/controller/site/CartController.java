	package edu.poly.controller.site;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.model.CartItem;
import edu.poly.model.Services;
import edu.poly.service.ServiceforService;
import edu.poly.service.ShoppingCartService;




@Controller
@RequestMapping("home")
public class CartController {
	@Autowired
	ServiceforService dao;
	@Autowired
	ShoppingCartService cartService;
	
	@GetMapping("cart")
	public String viewCart(Model model) {
		model.addAttribute("CART_ITEMS", cartService.getAllItems());
		return "home/cart";
	}
//	@PostMapping("/cart/add")
//	public String addToCart(@RequestParam("id") String productId, HttpSession session) {
//	    Service product = Service.findById(id);
//	    CartItem cart = (CartItem) session.getAttribute("cart");
//	    if (cart == null) {
//	        cart = new CartItem();
//	        session.setAttribute("cart", cart);
//	    }
//	    cart.addProduct(product);
//	    return "redirect:/cart";
//	}
	@GetMapping("add/{id}")
	public String addCart(@PathVariable("id") String id) {
		Services service = dao.findById(id);
		if (service != null) {
			CartItem item = new CartItem();
			item.setServiceid(service.getId());
			item.setName(service.getName());
			item.setPrice(service.getPrice());
			item.setQty(1);
			cartService.add(item);
		} else {

		}
		return "redirect:/cart";
	}
	
}
