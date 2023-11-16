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
@Table(name = "Bill")
public class Bill implements Serializable{
	
	@Id
	String id;
	@ManyToOne
	@JoinColumn(name = "Customer")
	Customer account;
	Date time;
	Double price;
	String sale;
	Double total;
	
	
//	@Column(nullable = false, columnDefinition = "bit default 0")
//	boolean activated;
	
	@OneToMany
	(mappedBy = "bill")
	List<BillDetail> billDetail;
//	boolean admin;
//	@OneToMany(mappedBy = "account")
//	List<Order> orders;
}
