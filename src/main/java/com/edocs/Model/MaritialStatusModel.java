package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="maritial_status")
public class MaritialStatusModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="pkid")
	int pkid;
	
	@Column(name="maritial_status")
	String maritialStatus;

	public MaritialStatusModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MaritialStatusModel(int pkid, String maritialStatus) {
		super();
		this.pkid = pkid;
		this.maritialStatus = maritialStatus;
	}

	public int getPkid() {
		return pkid;
	}

	public void setPkid(int pkid) {
		this.pkid = pkid;
	}

	public String getMaritialStatus() {
		return maritialStatus;
	}

	public void setMaritialStatus(String maritialStatus) {
		this.maritialStatus = maritialStatus;
	}
	
	
	
}
