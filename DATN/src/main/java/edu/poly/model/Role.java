package edu.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "Role")
public class Role implements Serializable{
	@Id
	String id;
	String name;
	
	@OneToMany
	(mappedBy = "role")
	List<Staff> Staff;
}
