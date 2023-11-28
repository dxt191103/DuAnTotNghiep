package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Role;

public interface RoleDAO extends JpaRepository<Role, String> {

}
