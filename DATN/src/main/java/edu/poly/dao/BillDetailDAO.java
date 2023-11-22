package edu.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import edu.poly.model.BillDetail;



public interface BillDetailDAO extends JpaRepository<BillDetail, Integer> {
	@Query("SELECT o FROM BillDetail o WHERE o.bill.id = ?1")
	Page<BillDetail> findByBill(Integer id, Pageable pageable);
	
	@Query("SELECT o FROM BillDetail o WHERE o.bill.id = ?1")
	List<BillDetail> findByBillID(Integer billid);
	
	
}
