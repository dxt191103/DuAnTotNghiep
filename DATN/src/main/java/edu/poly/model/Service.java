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
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Data;
@Data
@Entity
@Table(name = "Service")
public class Service implements Serializable{
	
	@Id
	@Size(min=2, max=10, message = "Id phải có từ 2 đến 10 ký tự")
	String id;
	//@Size(min = 5,max =10)
	@Size(min=2, max=50, message = "Tên phải có từ 2 đến 50 ký tự")
	String name;
	@Min(value=1,message = "Id phải có từ 7 đến 10 ký tự")
	double price;
	@Size(min=1, message = "Không được bỏ trống thời gian")
	String time;
	@Size(min=1,message = "Không được bỏ trống mô tả")
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
