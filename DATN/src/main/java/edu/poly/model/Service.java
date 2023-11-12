package edu.poly.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;
@Data
@Entity
@Table(name = "Service")
public class Service implements Serializable{
	
	@Id
	String id;
	String name;
	Double price;
	Time time;
	String descripsion;
	String image;
	
		
	
	@Column(nullable = false, columnDefinition = "bit default 0")
	boolean status;
	
	@OneToMany(mappedBy = "service")
	List<Sale> sale;
//	boolean admin;
//	@OneToMany(mappedBy = "account")
//	List<Order> orders;
}
