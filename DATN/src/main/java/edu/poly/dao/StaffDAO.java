package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Staff;

public interface StaffDAO extends JpaRepository<Staff, Integer> {
	
}
