package com.lithan.demowebone.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.*;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userId;
	
	@NotBlank(message = "First Name shuold not be left blank")
	@Size(min= 3, message="First Name contain more than 3 charcters")
	private String first_name;
	
	@NotBlank(message = "Last Name shuold not be left blank")
	private String last_name;
	
	@NotBlank(message = "Username shuold not be left blank")
	private String userName;
	
	@NotBlank(message = "Password shuold not be left blank") 
	private String password;
	
	@NotBlank(message = "Email shuold not be left blank")
	@Email
	private String mailid;
	
	@NotBlank(message = "Address shuold not be left blank") 
	private String address;
	
	private String role;
	
	public User() {
		
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMailid() {
		return mailid;
	}

	public void setMailid(String mailid) {
		this.mailid = mailid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", first_name=" + first_name + ", last_name=" + last_name + ", userName="
				+ userName + ", password=" + password + ", mailid=" + mailid + ", address=" + address + ", role=" + role
				+ "]";
	}

	public User(Long userId, String first_name, String last_name, String userName, String password, String mailid,
			String address, String role) {
		super();
		this.userId = userId;
		this.first_name = first_name;
		this.last_name = last_name;
		this.userName = userName;
		this.password = password;
		this.mailid = mailid;
		this.address = address;
		this.role = role;
	}

	public User(Integer userId, String fname, String lname, String mail, String address) {
		// TODO Auto-generated constructor stub
	}

	
}