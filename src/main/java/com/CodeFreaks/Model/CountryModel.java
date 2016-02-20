package com.CodeFreaks.Model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="country")
public class CountryModel {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="CountryID")
	private int countryID;
	
	@Column(name="CountryName")
	private String countryName;
	
	@Column(name="CountryDate")
	private Date countryDate;

	public Date getCountryDate() {
		return countryDate;
	}

	public void setCountryDate(Date countryDate) {
		this.countryDate = countryDate;
	}

	public int getCountryID() {
		return countryID;
	}

	public void setCountryID(int countryID) {
		this.countryID = countryID;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	
	
	
}
