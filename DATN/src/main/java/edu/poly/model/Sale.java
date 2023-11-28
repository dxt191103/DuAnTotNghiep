package edu.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Columns;

import lombok.Data;

@Data
@Entity
@Table(name = "Sale")
public class Sale implements Serializable{
	@Id
	@Size(min=1)
	String id;
	@Min(1)
	int percentPrice;
	@Size(min=1)
	String type;
	@ManyToOne
	@JoinColumn(name = "Service_id")
	@Size(min=1)
	Services services;

//	@Size(min=1)
//	boolean admin;

	
//	@OneToMany(mappedBy = "Sale")
//	List<Service> ID;
	
	
	 
}
