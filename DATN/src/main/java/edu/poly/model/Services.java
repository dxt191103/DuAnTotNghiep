package edu.poly.model;

import java.io.Serializable;

import java.util.List;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;

import javax.validation.constraints.Size;

import lombok.Data;
@Data
@Entity
@Table(name = "Service")
public class Services implements Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
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
	
	@OneToMany
	(mappedBy = "service")
	List<Bill> bills;


}
