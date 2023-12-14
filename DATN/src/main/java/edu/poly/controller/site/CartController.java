package edu.poly.controller.site;

import java.util.ArrayList;
import java.util.Iterator;
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
import edu.poly.utils.SessionService;

@Controller
@RequestMapping("home")
public class CartController {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	ParamService param;
	@Autowired
	ServiceDAO daoS;
//	@Autowired
//	CartitemDAO cartS;
	@Autowired
	SessionService sessionService;

	public static List<CartItem> list = new ArrayList<>();
	CartItem cartItem = new CartItem();
	int qty = cartItem.getQty();

	@RequestMapping("cart")
	public String index(Model model) {
		model.addAttribute("CART_ITEMS", list);
		model.addAttribute("total", cart.getAmount());

		return "home/cart";
	}

	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") int id) {
		cart.clear();
		list.clear();
		for (Services sv : daoS.findAll()) {
			if (id == (sv.getId())) {
				cartItem.setId(id);
				cartItem.setName(sv.getName());
				cartItem.setPrice(sv.getPrice());
				cartItem.setImage(sv.getImage());
				cartItem.setQty(qty);
				cart.add(id);
				list.add(cartItem);
			}
		}
//		for (CartItem cr : cartS.findAll()) {
//			if (id==(cr.getId())) {
//				cartItem.setId(id);
//				cartItem.setName(cr.getName());
//				cartItem.setPrice(cr.getPrice());
//				cartItem.setImage(cr.getImage());
//				cartItem.setQty(qty);
//				cart.remove(id);
//				list.remove(cartItem);			
//			}
//		}
//		return "forward:/home/cart";
//	}

//	@RequestMapping("/cart/sub/{id}")
//	public String sub(@PathVariable("id") String id) {
//		cart.sub(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") int id) {

		for (CartItem cartItem : list) {

			if (cartItem.getId() == id) {
				list.remove(cartItem);
				break;

			}
		}
		return "forward:/home/cart";
	}

	@RequestMapping("/cart/update")
	public String update() {
		int id = param.getInt("id", 0);
		int qty = param.getInt("qty", 0);
		cart.update(id, qty);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		list.clear();
		return "redirect:/home/services";
	}

}
