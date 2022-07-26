package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="transportation_type")
public class TransportationTypeModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="pkid")
	int pkid;
	
	@Column(name="transportation_type")
	String transportationType;

	public TransportationTypeModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TransportationTypeModel(int pkid, String transportationType) {
		super();
		this.pkid = pkid;
		this.transportationType = transportationType;
	}

	public int getPkid() {
		return pkid;
	}

	public void setPkid(int pkid) {
		this.pkid = pkid;
	}

	public String getTransportationType() {
		return transportationType;
	}

	public void setTransportationType(String transportationType) {
		this.transportationType = transportationType;
	}
	
	
	
}
