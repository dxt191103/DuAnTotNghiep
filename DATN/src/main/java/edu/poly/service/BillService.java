package edu.poly.service;

import java.util.Collection;
import java.util.List;

import edu.poly.model.Bill;

public interface BillService {
	public Bill add(int s);
	public Bill remove(int id);
	public List<Bill> getAll();
	public Bill findById(int id);
	Collection<Bill> getItems();
}
