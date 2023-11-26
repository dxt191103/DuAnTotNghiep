package edu.poly.controller.site;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.dao.ServiceDAO;
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
	@Autowired
	ServiceDAO Sdao;

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
//	@GetMapping("/update")

	
	@GetMapping("/add/{id}")
	public String addCart(@PathVariable("id") int id) {
		List<Services> xx = Sdao.findAll();
		Services service = new Services();
		for (Services services : xx) {
			if (services.getId()==id) {
				service = services;
			}
		}
		if (service != null) {
			CartItem item = new CartItem();
			item.setServiceid(service.getId());
			item.setName(service.getName());
			item.setPrice(service.getPrice());
			item.setQty(1);
			cartService.add(item);
			System.err.println(item.getName());
		};
		return "home/cart";
	}
	
	@GetMapping("clear")
	public String clearCart() {
		cartService.clear();
		return "redirect:/home/cart"; 
	}
	@GetMapping("/remove/{id}")
	public String delCart(@PathVariable("id") int id){
		cartService.remove(id);
		return "redirect:/home/cart"; 
	}
	
	@PostMapping("update")
	public String update(@RequestParam("id") int Id,@RequestParam("qty") int qty) {
		
		cartService.update(Id, qty);
		return "redirect:/home/cart";
	}
}
