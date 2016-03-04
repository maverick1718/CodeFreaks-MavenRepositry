package com.CodeFreaks.Model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.context.annotation.Lazy;



@Entity(name="Category")
@Lazy(value=false)
public class CategoryModel {
	@Id
	@Column(name="CategoryID")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int categoryID;
	
	ssnjsnjfn
	
	@Column(name="CategoryName")
	private String categoryName;
	
	@Column(name="CategoryDescription")
	private String categoryDescription;
	
	@Column(name="CategoryStatus")
	private String categoryStatus;
	
	@Column(name="CategoryDate")
	private Date categoryDate;

	public int getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryDescription() {
		return categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}

	public String getCategoryStatus() {
		return categoryStatus;
	}

	public void setCategoryStatus(String categoryStatus) {
		this.categoryStatus = categoryStatus;
	}

	public Date getCategoryDate() {
		return categoryDate;
	}

	public void setCategoryDate(Date categoryDate) {
		this.categoryDate = categoryDate;
	}

	}
