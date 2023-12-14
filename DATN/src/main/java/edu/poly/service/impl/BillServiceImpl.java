package edu.poly.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import edu.poly.dao.BillDAO;
import edu.poly.model.Bill;
import edu.poly.service.BillService;

public class BillServiceImpl implements BillService{
	public static List<Bill> ls = new ArrayList<>();
	Map<String, Bill> map = new HashMap<>();
	@Autowired
	BillDAO billDAO;
	
	@Override
	public Bill add(int s) {
		String ids = Integer.toString(s);
		Bill item =map.get(ids);
		if (item==null) {
			Bill bill = billDAO.findById(ids).get();
			
			
			map.put(ids, item);
		}
		// TODO Auto-generated method stub
		return item;
	}

	@Override
	public Bill remove(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bill> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Bill findById(int id) {
		// TODO Auto-generated method stub
		for (Bill bill : ls) {
			if (bill.getId() == id) {
				return bill;
			}
			
		}
		return null;
	}

	@Override
	public Collection<Bill> getItems() {
		// TODO Auto-generated method stub
		return map.values();
	}

}
