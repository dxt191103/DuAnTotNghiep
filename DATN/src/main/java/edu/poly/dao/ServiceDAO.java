package edu.poly.dao;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import edu.poly.model.Services;

public interface ServiceDAO extends JpaRepository<Services, Integer> {
	@Query("SELECT s FROM Services s WHERE s.name LIKE %:keywords%")
	Page<Services> findByKeywords(@Param("keywords") String keywords, Pageable pageable);

}
