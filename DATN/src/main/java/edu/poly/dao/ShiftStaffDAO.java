package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.ShiftStaff;


public interface ShiftStaffDAO extends JpaRepository<ShiftStaff, String> {

}
