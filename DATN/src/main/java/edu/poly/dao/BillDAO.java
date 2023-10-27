package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Bill;

public interface BillDAO extends JpaRepository<Bill, String> {

}
