package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Service;

public interface ServiceDAO extends JpaRepository<Service, String> {

}
