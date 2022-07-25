package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="upload_document")
public class UplodDocumentModel {
	
	@Id
	@Column(name="pkid")
	private int pkid;
	@Column(name="user_id")
	private long userId;
	@Column(name="application_visa_id")
	private int applicationVisaId;
	@Column(name="application_info_id")
	private long additionalInfoId;
	@Column(name="photography")
	private String photoGraphy;
	@Column(name="passport")
	private String passport;
	@Column(name="hotel_booking")
	private String hotelBooking;
	@Column(name="residence_proof")
	private String residenceProof;
	
	
	public UplodDocumentModel() {
		super();
		
	}


	public UplodDocumentModel(int pkid, long userId, int applicationVisaId, long additionalInfoId, String photoGraphy,
			String passport, String hotelBooking, String residenceProof) {
		super();
		this.pkid = pkid;
		this.userId = userId;
		this.applicationVisaId = applicationVisaId;
		this.additionalInfoId = additionalInfoId;
		this.photoGraphy = photoGraphy;
		this.passport = passport;
		this.hotelBooking = hotelBooking;
		this.residenceProof = residenceProof;
	}


	public int getPkid() {
		return pkid;
	}


	public void setPkid(int pkid) {
		this.pkid = pkid;
	}


	public long getUserId() {
		return userId;
	}


	public void setUserId(long userId) {
		this.userId = userId;
	}


	public int getApplicationVisaId() {
		return applicationVisaId;
	}


	public void setApplicationVisaId(int applicationVisaId) {
		this.applicationVisaId = applicationVisaId;
	}


	public long getAdditionalInfoId() {
		return additionalInfoId;
	}


	public void setAdditionalInfoId(long additionalInfoId) {
		this.additionalInfoId = additionalInfoId;
	}


	public String getPhotoGraphy() {
		return photoGraphy;
	}


	public void setPhotoGraphy(String photoGraphy) {
		this.photoGraphy = photoGraphy;
	}


	public String getPassport() {
		return passport;
	}


	public void setPassport(String passport) {
		this.passport = passport;
	}


	public String getHotelBooking() {
		return hotelBooking;
	}


	public void setHotelBooking(String hotelBooking) {
		this.hotelBooking = hotelBooking;
	}


	public String getResidenceProof() {
		return residenceProof;
	}


	public void setResidenceProof(String residenceProof) {
		this.residenceProof = residenceProof;
	}
	
	
	
	

}
