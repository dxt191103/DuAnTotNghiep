package edu.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
@Entity
@Table(name = "Sale")
public class Sale implements Serializable{
	@Id
	@Size(min=1)
	String id;
	@Size(min=1)
	@Min(1)
	int percentPrice;
	@Size(min=1)
	String type;
	@ManyToOne
	@JoinColumn(name = "Service_id")
	@Size(min=1)
	Service service;
//	@Size(min=1)
//	boolean admin;
	
//	@OneToMany(mappedBy = "Sale")
//	List<Service> ID;
	
	
	 
}
