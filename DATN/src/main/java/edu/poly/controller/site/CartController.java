package edu.poly.controller.site;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.dao.ServiceDAO;
import edu.poly.model.CartItem;
import edu.poly.model.Services;
import edu.poly.service.ShoppingCartService;
import edu.poly.utils.ParamService;
@Controller
@RequestMapping("home")
public class CartController {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	ParamService param;
	@Autowired
	ServiceDAO daoS;
	
	List<CartItem> list = new ArrayList<>();
	
	@RequestMapping("cart")
	public String index(Model model) {
		model.addAttribute("CART_ITEMS", list);
		return "home/cart";
	}
	

	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") String id) {
		CartItem cartItem = new CartItem();
		for (Services sv : daoS.findAll()) {
			if (id.equals(sv.getId())) {
				cartItem.setId(id);
				cartItem.setName(sv.getName());
				cartItem.setPrice(sv.getPrice());
				cartItem.setImage(sv.getImage());
				cartItem.setQty(1);
			}
		}
		
		list.add(cartItem);
		System.err.print(list.get(0).getName());
		return "forward:/home/cart";
	}
	
	@RequestMapping("/cart/sub/{id}")
	public String sub(@PathVariable("id") String id) {
		cart.sub(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") String id) {
		cart.remove(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/update")
	public String update() {
		String id = param.getString("id", "0");
		int qty = param.getInt("qty", 0);
		cart.update(id, qty);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/home/cart";
	}
}
