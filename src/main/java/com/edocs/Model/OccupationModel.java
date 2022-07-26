package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="occupation")
public class OccupationModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="pkid")
	int pkid;
	@Column(name="occupation")
	String occupation;
	public OccupationModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OccupationModel(int pkid, String occupation) {
		super();
		this.pkid = pkid;
		this.occupation = occupation;
	}
	public int getPkid() {
		return pkid;
	}
	public void setPkid(int pkid) {
		this.pkid = pkid;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	
	
	
}
