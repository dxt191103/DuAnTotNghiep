package edu.poly.service;

import java.util.Collection;

import edu.poly.model.CartItem;

public interface ShoppingCartService {

	double getAmount();
	int getCount();
	Collection<CartItem> getAllItems();
	void clear();
	CartItem update(String serID, int qty);
	void remove(int id);
	void add(CartItem item);
	
}
