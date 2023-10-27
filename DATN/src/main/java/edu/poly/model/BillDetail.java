package edu.poly.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

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
@Table(name = "Bill_detail")
public class BillDetail implements Serializable{
	
	@Id
	String id;
	@ManyToOne
	@JoinColumn(name = "Customer")
	Customer account;

	@ManyToOne
	@JoinColumn(name = "Staff_id")
	Staff staff;

	@ManyToOne
	@JoinColumn(name = "Bill_id")
	Bill bill;

	@ManyToOne
	@JoinColumn(name = "Service_id")
	Service service;
	Double price;

	
	
//	@OneToMany(mappedBy = "Bill_detail")
//	List<Customer> username;
//	@OneToMany(mappedBy = "Bill_detail")
//	List<Staff> StaffId;
//	@OneToMany(mappedBy = "Bill_detail")
//	List<Bill> Bill_ID;
//	@OneToMany(mappedBy = "Bill_detail")
//	List<Service> Service_ID;
}
