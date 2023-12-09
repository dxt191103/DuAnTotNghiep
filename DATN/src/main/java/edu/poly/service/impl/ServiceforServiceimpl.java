package edu.poly.service.impl;

import java.util.ArrayList;
import java.util.List;
import edu.poly.model.Services;

import org.springframework.stereotype.Service;

import edu.poly.service.ServiceforService;



@Service
public class ServiceforServiceimpl implements ServiceforService{
	
	public static List<Services> ls = new ArrayList<>();
	@Override
	public int add(Services s) {
		
		return 0;
	}

	@Override
	public int remove(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Services> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Services findById(int id) {
		// TODO Auto-generated method stub
		for (Services services : ls) {
			if (services.getId() == id) {
				return services;
			}
		}
		return null;
	}
}
