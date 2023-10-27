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
@Table(name = "Staff")
public class Staff implements Serializable{
	
	@Id
	String id;
	String name;
	Date birthday;
	String address;
	String phone;
	String image;
	int experience;
	@ManyToOne
	@JoinColumn(name="Role")
	Role role;
	
	

	boolean status;
	
	
	@OneToMany
	(mappedBy = "staff")
	List<BillDetail> BillDetail;
}
