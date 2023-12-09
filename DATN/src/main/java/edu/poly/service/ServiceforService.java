package edu.poly.service;

import java.util.List;

import edu.poly.model.Services;


public interface ServiceforService {
	public int add(Services s);
	public int remove(String id);
	public List<Services> getAll();
	public Services findById(String id);
}
