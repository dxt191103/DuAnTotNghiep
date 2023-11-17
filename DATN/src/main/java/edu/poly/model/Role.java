package edu.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
@Entity
@Table(name = "Role")
public class Role implements Serializable{
	@Id
	@Size(min=1)
	String id;
	@Size(min=1)
	String name;
	
	@OneToMany
	(mappedBy = "role")
	List<Staff> Staff;
}
