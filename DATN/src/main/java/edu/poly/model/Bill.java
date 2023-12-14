package edu.poly.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.sql.Time;

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

import org.hibernate.validator.constraints.Length;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@Entity
@Table(name = "Bill")
@AllArgsConstructor
@NoArgsConstructor
public class Bill implements Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@ManyToOne
	@JoinColumn(name = "Customer")
	@Size(min=1)
	Customer account;
	
	@Size(min=1)
	String time;
	
	@ManyToOne
	@JoinColumn(name = "Service")
	Services service;

	@Min(1)
	Double price;
	
	@Size(min=1)
	String dayorder;
	
	@ManyToOne
	@JoinColumn(name = "Timeorder")
	Timeorder timeOrder;

	@ManyToOne
	@JoinColumn(name = "Sale")
	Sale sale;

	@Min(1)
	Double total;
	
	
	
//	@Column(nullable = false, columnDefinition = "bit default 0")
//	boolean activated;
//	boolean admin;
//	@OneToMany(mappedBy = "account")
//	List<Order> orders;
}
