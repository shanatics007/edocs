package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="ed_visa_application")
@SequenceGenerator(name = "seqVisaApp", initialValue=112233)
public class ApplicationForVisaModel {
	
	@Id
	@Column(name="pkid")
	@GeneratedValue(strategy = GenerationType.SEQUENCE , generator = "seqVisaApp")
	int pkid;
	
	@Column(name="travel_airports")
	String travelAirports;
	
	@Column(name="purpose_for_travel")
	String purposeForTravel;
	
	@Column(name="planned_date_of_travel")
	String plannedDateOfTravel;
	
	@Column(name="first_name")
	String firstName;
	
	@Column(name="last_name")
	String lastName;
	
	@Column(name="date_of_birth")
	String dateOfBirth;
	
	@Column(name="email")
    String email;
	
	@Column(name="contact_phone_number")
	String contactPhoneNumber;
	
	@Column(name="nationality")
	String nationality;
	
	@Column(name="user_id")
	long userId;
	
   @Column(name="auth_key")
	String confirmAuthKey;
	
	
	public int getPkid() {
		return pkid;
	}
	public void setPkid(int pkid) {
		this.pkid = pkid;
	}
	public String getTravelAirports() {
		return travelAirports;
	}
	public void setTravelAirports(String travelAirports) {
		this.travelAirports = travelAirports;
	}
	
	public String getPurposeForTravel() {
		return purposeForTravel;
	}
	public void setPurposeForTravel(String purposeForTravel) {
		this.purposeForTravel = purposeForTravel;
	}
	public String getPlannedDateOfTravel() {
		return plannedDateOfTravel;
	}
	public void setPlannedDateOfTravel(String plannedDateOfTravel) {
		this.plannedDateOfTravel = plannedDateOfTravel;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactPhoneNumber() {
		return contactPhoneNumber;
	}
	public void setContactPhoneNumber(String contactPhoneNumber) {
		this.contactPhoneNumber = contactPhoneNumber;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getConfirmAuthKey() {
		return confirmAuthKey;
	}
	public void setConfirmAuthKey(String confirmAuthKey) {
		this.confirmAuthKey = confirmAuthKey;
	}
	
	
	

}
