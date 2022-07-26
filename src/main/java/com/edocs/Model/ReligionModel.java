package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="religion")
public class ReligionModel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="pkid")
	int pkid;
	@Column(name="religion")
	String religion;
	public ReligionModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReligionModel(int pkid, String religion) {
		super();
		this.pkid = pkid;
		this.religion = religion;
	}
	public int getPkid() {
		return pkid;
	}
	public void setPkid(int pkid) {
		this.pkid = pkid;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	
	
	
	
}
