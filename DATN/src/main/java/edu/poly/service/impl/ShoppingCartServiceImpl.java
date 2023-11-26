package edu.poly.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;



import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;
import edu.poly.model.CartItem;
import edu.poly.service.ShoppingCartService;








@SessionScope
@Service
public class ShoppingCartServiceImpl  implements ShoppingCartService{
	Map<String,CartItem> maps = new HashMap<>();
	@Override
	public void add(CartItem item) {
		CartItem cartItem = maps.get(item.getServiceid());
		if (cartItem == null) {
			maps.put(String.valueOf(item.getServiceid()), cartItem);
		} else {
			cartItem.setQty(cartItem.getQty() + 1);
		}
	}
	@Override
	public void remove(int id) {
		maps.remove(id);
	}
	@Override
	public CartItem update(int serID,int qty) {
		CartItem cartItem = maps.get(serID);
		cartItem.setQty(qty);
		return cartItem;
	}
	@Override
	public void clear() {
		maps.clear();
	}
	@Override
	public Collection<CartItem> getAllItems(){
		return maps.values();
		
	}
	@Override
	public int getCount() {
		return maps.values().size();
	}
	@Override
	public double getAmount() {
		return maps.values().stream().mapToDouble(item -> item.getQty() * item.getPrice()).sum();
	}
	
	
}
