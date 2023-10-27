package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Sale;

public interface SaleDAO extends JpaRepository<Sale, String> {

}
