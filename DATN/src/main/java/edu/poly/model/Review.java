package edu.poly.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;
@Data
@Entity
@Table(name = "Review")
public class Review implements Serializable{
	
	@Id
	String id;
	String content;
	@ManyToOne
	@JoinColumn(name = "Staff_id")
	Staff staf;
	@ManyToOne
	@JoinColumn(name = "Service_id")
	Service service;
	@ManyToOne
	@JoinColumn(name = "Customer")
	Customer account;
	int level;
	Boolean status;
	
	@Column(nullable = false, columnDefinition = "bit default 0")
	boolean activated;
	

//	@OneToMany(mappedBy = "Review")
//	List<ShiftStaff> ID;
//	@OneToMany(mappedBy = "Review")
//	List<Service> Service_ID;
//	@OneToMany(mappedBy = "Review")
//	List<Customer> customer_ID;
	
	
	
}
