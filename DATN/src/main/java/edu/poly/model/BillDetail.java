package edu.poly.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import lombok.Data;
import lombok.ToString;
@Data
@Entity
@Table(name = "Bill_detail")
public class BillDetail implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Size(min=1)
	Integer id;
	@ManyToOne
	@JoinColumn(name = "Staff_id")
	@Size(min=1)
	Staff staff;
	@ManyToOne
	@JoinColumn(name = "Bill_id")
	@Size(min=1)
	Bill bill;
	@ManyToOne
	@JoinColumn(name = "Service_id")
	@Size(min=1)
	Service service;
	@Min(1)
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
