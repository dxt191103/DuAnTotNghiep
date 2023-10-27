package edu.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.poly.model.Review;

public interface ReviewDAO extends JpaRepository<Review, String> {

}
