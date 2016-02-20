package com.CodeFreaks.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="signup")
public class SignUpModel {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="SignUpID")
	private int signUpID;
	
	@Column(name="Firstname")
	private String firstname;
	
	@Column(name="Lastname")
	private String lastname;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Username")
	private String username;
	
	@Column(name="Password")
	private String password;

	public int getSignUpID() {
		return signUpID;
	}

	public void setSignUpID(int signUpID) {
		this.signUpID = signUpID;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
