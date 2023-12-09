package edu.poly.service;

import java.util.Collection;

import edu.poly.model.CartItem;

public interface ShoppingCartService {

	CartItem add(String id);

	
	CartItem sub(String id);
	
	void remove(String id);

	
	
	CartItem update(String id, int qty);

	
	
	void clear();

	
	
	Collection<CartItem> getItems();

	
	int getCount();

	
	
	double getAmount();
	
	
	
	
	double getTotal();
	
}
