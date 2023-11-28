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
import javax.validation.constraints.Size;

import lombok.Data;
@Data
@Entity
@Table(name = "Shift_staff")
public class ShiftStaff implements Serializable{
	
	@Id
	@Size(min=1)
	String id;
	@ManyToOne
	@JoinColumn(name = "Staff_id")
	@Size(min=1)
	Staff staff;
	@ManyToOne
	@JoinColumn(name = "Shift_id")
	@Size(min=1)
	Shift shift;
	
	
	
	
	

//	@OneToMany(mappedBy = "Shift_staff")
//	List<Staff> Staff_ID;
//	@OneToMany(mappedBy = "Shift_staff")
//	List<Shift> Shift_ID;
}