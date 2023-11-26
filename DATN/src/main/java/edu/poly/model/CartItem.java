package edu.poly.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {
	int serviceid;
	String name;
	double price;
	int qty = 1;
	public void addProduct(Services product) {
		// TODO Auto-generated method stub
		
	}
}
