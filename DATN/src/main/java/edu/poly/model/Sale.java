package edu.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "Sale")
public class Sale implements Serializable{
	@Id
	String id;
	int percentPrice;
	String type;
	@ManyToOne
	@JoinColumn(name = "Service_id")
	Service service;

	boolean admin;
	
//	@OneToMany(mappedBy = "Sale")
//	List<Service> ID;
	
	
	 
}
