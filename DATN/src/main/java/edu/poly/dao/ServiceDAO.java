package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Services;

public interface ServiceDAO extends JpaRepository<Services, String> {
	
}
