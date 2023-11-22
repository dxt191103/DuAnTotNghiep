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
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.PositiveOrZero;
import javax.validation.constraints.Size;

import lombok.Data;
@Data
@Entity
@Table(name = "Staff")
public class Staff implements Serializable{
	
	@Id
	@Size(min=2, max=10, message = "Id phải từ 2 đến 10 ký tự")
	String id;
	@Size(min=2,max=50, message = "Tên phải từ 2 đến 50 ký tự")
	String name;
	@Size(min=1,message = "Không được bỏ trông ngày sinh")
	@PastOrPresent(message = "Bạn đến từ tương lai à?")
	String birthday;
	@Size(min=1)
	String address;
	@Pattern(regexp = "^\\d{10}$", message = "Số điện thoại phải là số và có 10 ký tự")
	String phone;
	@Size(min=1)
	@Pattern(message = "Email không đúng định dạng", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
	String mail;
	String image;
	@PositiveOrZero(message = "Kinh nghiệm phải là số nguyên dương")
	int experience;
	@ManyToOne
	@JoinColumn(name="Role")
	Role role;
	
	
	boolean status;
	
	
	@OneToMany
	(mappedBy = "staff")
	List<BillDetail> BillDetail;
}
