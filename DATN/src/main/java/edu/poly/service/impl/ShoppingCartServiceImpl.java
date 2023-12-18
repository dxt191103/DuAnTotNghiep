package edu.poly.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import edu.poly.model.CartItem;

import edu.poly.model.Services;

import edu.poly.dao.ServiceDAO;
import edu.poly.service.ShoppingCartService;








@SessionScope
@Service
public class ShoppingCartServiceImpl  implements ShoppingCartService{
	Map<String, CartItem> map = new HashMap<>();
	@Autowired
	ServiceDAO serDao;
	
	
	@Override
	public double getTotal() {
		double total=0;
		for(CartItem item:map.values()) {
			total+=(item.getPrice()*item.getQty());
		}
		return total;
	}
	
	@Override
	public CartItem add(int id) {
		String ids = Integer.toString(id);
		CartItem item = map.get(ids);
		if (item == null) {
			Services product = serDao.findById(id).get();
			item = new CartItem();
			item.setId(product.getId());
			item.setImage(product.getImage());
			item.setName(product.getName());
			item.setPrice(product.getPrice());
			item.setQty(1);
			
			map.put(ids, item);
		} 
		return item;
	}
	
	
	@Override
	public CartItem sub(int id) {
		String ids = Integer.toString(id);
		CartItem item = map.get(ids);
		if (item == null) {
			Services product = serDao.findById(id).get();
			item = new CartItem();
			item.setId(product.getId());
			item.setImage(product.getImage());
			item.setName(product.getName());
			item.setPrice(product.getPrice());
			item.setQty(1);
			
			map.put(ids, item);
		} else {
			if(item.getQty() > 1) {
				item.setQty(item.getQty() - 1);
			}else {
				item.setQty(1);
			}
		}
		return item;
	}

	@Override
	public void remove(int id) {
		String ids = Integer.toString(id);
		map.remove(ids);
	}

	@Override
	public CartItem update(int id, int qty) {
		String ids = Integer.toString(id);
		CartItem item = map.get(ids);
		item.setQty(qty);
		return item;
	}

	@Override
	public void clear() {
		map.clear();
	}

	@Override
	public Collection<CartItem> getItems() {
		return map.values();
	}

	@Override
	public int getCount() {
		return map.values().stream().mapToInt(item -> item.getQty()).sum();
	}

	@Override
	public double getAmount() {
		return map.values().stream().mapToDouble(item -> item.getPrice()*item.getQty()).sum();
	}
	
	
}
