package com.CodeFreaks.Model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="problems")
public class ProblemModel {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ProblemID")
	private int problemID;
	
	@Column(name="ProblemType")
	private String problemType;
	
	@Column(name="ProblemName")
	private String problemName;
	
	@Column(name="ProblemDescription",columnDefinition="TEXT")
	private String problemDescription;
	
	@Column(name="ProblemInput",columnDefinition="TEXT")
	private String problemInput;
	
	@Column(name="ProblemOutput",columnDefinition="TEXT")
	private String problemOutput;
	
	@Column(name="ProblemFlow",columnDefinition="TEXT")
	private String problemFlow;
	
	@Column(name="ProblemSolution",columnDefinition="TEXT")
	private String problemSolution;
	
	@Column(name="ProblemTestcase",columnDefinition="TEXT")
	private String problemTestcase;
	
	@Column(name="ProblemMarks",columnDefinition="int")
	private String problemMarks;

	@ManyToOne
	@JoinColumn(name="CategoryID")
	private CategoryModel categoryModel;
	
	@Column(name="ProblemDate")
	private Date problemDate;
	
	public int getProblemID() {
		return problemID;
	}

	public void setProblemID(int problemID) {
		this.problemID = problemID;
	}

	public String getProblemType() {
		return problemType;
	}

	public void setProblemType(String problemType) {
		this.problemType = problemType;
	}

	public String getProblemName() {
		return problemName;
	}

	public void setProblemName(String problemName) {
		this.problemName = problemName;
	}

	public String getProblemDescription() {
		return problemDescription;
	}

	public void setProblemDescription(String problemDescription) {
		this.problemDescription = problemDescription;
	}

	public String getProblemInput() {
		return problemInput;
	}

	public void setProblemInput(String problemInput) {
		this.problemInput = problemInput;
	}

	public String getProblemOutput() {
		return problemOutput;
	}

	public void setProblemOutput(String problemOutput) {
		this.problemOutput = problemOutput;
	}

	public String getProblemFlow() {
		return problemFlow;
	}

	public void setProblemFlow(String problemFlow) {
		this.problemFlow = problemFlow;
	}

	public String getProblemSolution() {
		return problemSolution;
	}

	public void setProblemSolution(String problemSolution) {
		this.problemSolution = problemSolution;
	}

	public String getProblemTestcase() {
		return problemTestcase;
	}

	public void setProblemTestcase(String problemTestcase) {
		this.problemTestcase = problemTestcase;
	}

	public String getProblemMarks() {
		return problemMarks;
	}

	public void setProblemMarks(String problemMarks) {
		this.problemMarks = problemMarks;
	}
	
	public CategoryModel getCategoryModel() {
		return categoryModel;
	}

	public void setCategoryModel(CategoryModel categoryModel) {
		this.categoryModel = categoryModel;
	}

	public Date getProblemDate() {
		return problemDate;
	}

	public void setProblemDate(Date problemDate) {
		this.problemDate = problemDate;
	}


}
