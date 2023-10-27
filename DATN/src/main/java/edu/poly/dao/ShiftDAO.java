package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Shift;

public interface ShiftDAO extends JpaRepository<Shift, String> {

}
