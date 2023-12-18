package edu.poly.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Customer;

public interface CustomerDAO extends JpaRepository<Customer, String> {

	Optional<Customer> findByUsername(String username);

//	Optional<Customer> findByUsername(String username);

}
