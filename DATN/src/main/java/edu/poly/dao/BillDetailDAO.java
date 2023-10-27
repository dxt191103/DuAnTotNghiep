package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.BillDetail;


public interface BillDetailDAO extends JpaRepository<BillDetail, String> {

}
