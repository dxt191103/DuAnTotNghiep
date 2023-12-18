package edu.poly.service;

import java.util.Collection;

import edu.poly.model.CartItem;

public interface ShoppingCartService {

	CartItem add(int id);

	
	CartItem sub(int id);
	
	void remove(int id);

	
	
	CartItem update(int id, int qty);

	
	
	void clear();

	
	
	Collection<CartItem> getItems();

	
	int getCount();

	
	
	double getAmount();
	
	
	
	
	double getTotal();
	
}
