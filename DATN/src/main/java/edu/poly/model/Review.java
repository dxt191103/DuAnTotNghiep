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
import javax.validation.constraints.Positive;
import javax.validation.constraints.PositiveOrZero;
import javax.validation.constraints.Size;

import lombok.Data;
@Data
@Entity
@Table(name = "Review")
public class Review implements Serializable{
	
	@Id
	@Size(min=2, message = "Id phải có từ 2 đến 10 ký tự")
	String id;
	@Size(min=1)
	String content;
	@ManyToOne
	@JoinColumn(name = "Staff_id")
	@Size(min=1)
	Staff staf;
	@ManyToOne
	@JoinColumn(name = "Service_id")
	@Size(min=1)
	Services services;
	@ManyToOne
	@JoinColumn(name = "Customer")
	@Size(min=1)
	Customer account;
	@PositiveOrZero(message = "Kinh nghiệm phải là số dương")
	int level;
	Boolean status;
	@Size(min=1)
	@Column(nullable = false, columnDefinition = "bit default 0")
	boolean activated;
	

//	@OneToMany(mappedBy = "Review")
//	List<ShiftStaff> ID;
//	@OneToMany(mappedBy = "Review")
//	List<Service> Service_ID;
//	@OneToMany(mappedBy = "Review")
//	List<Customer> customer_ID;
	
	
	
}
