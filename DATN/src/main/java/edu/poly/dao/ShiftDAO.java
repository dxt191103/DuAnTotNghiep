package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Timeorder;

public interface ShiftDAO extends JpaRepository<Timeorder, String> {

}
