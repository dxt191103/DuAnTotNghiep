package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Customer;

public interface CustomerDAO extends JpaRepository<Customer, String> {

}
