package edu.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import edu.poly.model.BillDetail;



public interface BillDetailDAO extends JpaRepository<BillDetail, String> {
	@Query("SELECT o FROM BillDetail o WHERE o.bill.id = ?1")
	Page<BillDetail> findByBill(String id, Pageable pageable);
	
	@Query("SELECT o FROM BillDetail o WHERE o.bill.id = ?1")
	List<BillDetail> findByBillID(String billid);
	
	
}
