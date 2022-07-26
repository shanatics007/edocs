package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "qualification")
public class QualificationModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="pkid")
	int pkid;
	@Column(name="qualification")
	String qualification;
	
	public QualificationModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QualificationModel(int pkid, String qualification) {
		super();
		this.pkid = pkid;
		this.qualification = qualification;
	}
	public int getPkid() {
		return pkid;
	}
	public void setPkid(int pkid) {
		this.pkid = pkid;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	
	

}
