package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employment_status")
public class EmploymentStatusModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="pkid")
	int pkid;
	
	@Column(name="employment_status")
	String employmentStatus;

	
	public EmploymentStatusModel() {
		super();
		// TODO Auto-generated constructor stub
	}


	public EmploymentStatusModel(int pkid, String employmentStatus) {
		super();
		this.pkid = pkid;
		this.employmentStatus = employmentStatus;
	}


	public int getPkid() {
		return pkid;
	}


	public void setPkid(int pkid) {
		this.pkid = pkid;
	}


	public String getEmploymentStatus() {
		return employmentStatus;
	}


	public void setEmploymentStatus(String employmentStatus) {
		this.employmentStatus = employmentStatus;
	}
	
	
	
	

}
