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
	double pkid;
	
	@Column(name="travel_country")
	String travelCountry;
	
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
	
	@Column(name="insurance")
	String insurance;
	
	@Column(name="insurance_start_date")
	String insuranceStartDate;
	
	@Column(name="insurance_end_date")
	String insuranceEndDate;
	
	
	public String getTravelCountry() {
		return travelCountry;
	}
	public void setTravelCountry(String travelCountry) {
		this.travelCountry = travelCountry;
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
	public String getInsurance() {
		return insurance;
	}
	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}
	
	
	
	
	

}
