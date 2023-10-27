package edu.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


import lombok.Data;

@Data
@Entity
@Table(name = "customer")
public class Customer implements Serializable{
	@Id
	String username;
	String password;
	String fullname;
	String phone;
	String email;
	
	@OneToMany
	(mappedBy = "account")
	List<BillDetail> BillDetail;
		
}
