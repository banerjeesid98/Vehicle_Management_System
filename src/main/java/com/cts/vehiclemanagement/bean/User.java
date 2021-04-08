package com.cts.vehiclemanagement.bean;

import javax.persistence.Entity;

import javax.persistence.Id;

import org.springframework.stereotype.Component;


@Component
@Entity
public class User {

	@Id
	private String email;
	private String fname;
	private String lname;	
	private String password;
	

	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [email=" + email + ", fname=" + fname + ", lname=" + lname + ", password=" + password + "]";
	}

}
