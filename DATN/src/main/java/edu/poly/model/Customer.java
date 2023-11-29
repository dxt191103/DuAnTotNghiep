package edu.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

import lombok.Data;

@Data
@Entity
@Table(name = "customer")
public class Customer implements Serializable{
	@Id
	@Size(min=7, max=10, message = "Username phải có từ 7 đến 10 ký tự")
	String username;
	@Size(min=7, max=20, message = "Password phải có từ 7 đến 20 ký tự")
	String password;
	@Size(min=2, max=50, message = "Tên phải có từ 2 đến 10 ký tự")
	String fullname;
	@Pattern(regexp = "^\\d{10}$", message = "Số điện thoại phải là số và có 10 ký tự")
	String phone;
	@Size(min=1, message = "Không được để trống Email")
	@Pattern(message = "Không đúng định dạng Email", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
	String email;
	
	@OneToMany
	(mappedBy = "account")
	List<Bill> Bill;
		
}
