package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="addition_info_form")
public class AdditionalInfoModel {
	@Id
	@Column(name="pkid")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long pkid;
	@Column(name="user_id")
	private long userId;
	@Column(name="application_Visa_id")
	private int applicationVisaId;
	@Column(name="auth_key")
	private String authKey;
	@Column(name="birth_country")
	private String birthCountry;
	@Column(name="birth_city")
	private String birthCity;
	@Column(name="gender")
	private String gender;
	@Column(name="maritial_status")
	private String maritialStatus;
	@Column(name="passport_number")
	private String passportNumber;
	@Column(name="passport_issue_country")
	private String passPortIssueCountry;
	@Column(name="passport_issue_authority")
	private String passPortIssueAuthority;
	@Column(name="passport_issue_date")
	private String passPrtDateOfIssue;
	@Column(name="passport_issue_date_expiry")
	private String passPortDateOfExpiry;
	@Column(name="street")
	private String street;
	@Column(name="city")
	private String city;
	@Column(name="country")
	private String country;
	@Column(name="vat_invoice")
	private boolean vatInvoice;
	@Column(name="tax_identification_number")
	private String taxIdentificationNumber;
	@Column(name="tax_company_name")
	private String taxNameOfCompany;
	@Column(name="tax_company_country")
	private String taxCompanyofCountry;
	@Column(name="tax_company_city")
	private String taxCompanyofCity;
	@Column(name="tax_company_postal")
	private String taxCompanyofPostal;
	@Column(name="tax_company_street")
	private String taxCompanyofStreet;
	@Column(name="employee_status")
	private String employeeStatus;
	@Column(name="occupation")
	private String occupation;
	@Column(name="qualification")
	private String qualification;
	@Column(name="religion")
	private String religion;
	@Column(name="mother_name")
	private String motherName;
	@Column(name="transportation_type")
	private String transportationType;
	@Column(name="departure_country")
	private String departureCountry;
	@Column(name="departure_city")
	private String departureCity;
	@Column(name="hotel_name")
	private String nameOfHotel;
	@Column(name="accomodation_address")
	private String accomodationAddress;
	@Column(name="accomodation_phoneNo")
	private String accomodationPhoneNo;
	@Column(name="check_Visa_Application_Status")
	private String checkVisaApplicationStatus;
	public AdditionalInfoModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdditionalInfoModel(long pkid, long userId, int applicationVisaId, String authKey, String birthCountry,
			String birthCity, String gender, String maritialStatus, String passportNumber, String passPortIssueCountry,
			String passPortIssueAuthority, String passPrtDateOfIssue, String passPortDateOfExpiry, String street,
			String city, String country, boolean vatInvoice, String taxIdentificationNumber, String taxNameOfCompany,
			String taxCompanyofCountry, String taxCompanyofCity, String taxCompanyofPostal, String taxCompanyofStreet,
			String employeeStatus, String occupation, String qualification, String religion, String motherName,
			String transportationType, String departureCountry, String departureCity, String nameOfHotel,
			String accomodationAddress, String accomodationPhoneNo, String checkVisaApplicationStatus) {
		super();
		this.pkid = pkid;
		this.userId = userId;
		this.applicationVisaId = applicationVisaId;
		this.authKey = authKey;
		this.birthCountry = birthCountry;
		this.birthCity = birthCity;
		this.gender = gender;
		this.maritialStatus = maritialStatus;
		this.passportNumber = passportNumber;
		this.passPortIssueCountry = passPortIssueCountry;
		this.passPortIssueAuthority = passPortIssueAuthority;
		this.passPrtDateOfIssue = passPrtDateOfIssue;
		this.passPortDateOfExpiry = passPortDateOfExpiry;
		this.street = street;
		this.city = city;
		this.country = country;
		this.vatInvoice = vatInvoice;
		this.taxIdentificationNumber = taxIdentificationNumber;
		this.taxNameOfCompany = taxNameOfCompany;
		this.taxCompanyofCountry = taxCompanyofCountry;
		this.taxCompanyofCity = taxCompanyofCity;
		this.taxCompanyofPostal = taxCompanyofPostal;
		this.taxCompanyofStreet = taxCompanyofStreet;
		this.employeeStatus = employeeStatus;
		this.occupation = occupation;
		this.qualification = qualification;
		this.religion = religion;
		this.motherName = motherName;
		this.transportationType = transportationType;
		this.departureCountry = departureCountry;
		this.departureCity = departureCity;
		this.nameOfHotel = nameOfHotel;
		this.accomodationAddress = accomodationAddress;
		this.accomodationPhoneNo = accomodationPhoneNo;
		this.checkVisaApplicationStatus = checkVisaApplicationStatus;
	}
	public long getPkid() {
		return pkid;
	}
	public void setPkid(long pkid) {
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
	public String getAuthKey() {
		return authKey;
	}
	public void setAuthKey(String authKey) {
		this.authKey = authKey;
	}
	public String getBirthCountry() {
		return birthCountry;
	}
	public void setBirthCountry(String birthCountry) {
		this.birthCountry = birthCountry;
	}
	public String getBirthCity() {
		return birthCity;
	}
	public void setBirthCity(String birthCity) {
		this.birthCity = birthCity;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMaritialStatus() {
		return maritialStatus;
	}
	public void setMaritialStatus(String maritialStatus) {
		this.maritialStatus = maritialStatus;
	}
	public String getPassportNumber() {
		return passportNumber;
	}
	public void setPassportNumber(String passportNumber) {
		this.passportNumber = passportNumber;
	}
	public String getPassPortIssueCountry() {
		return passPortIssueCountry;
	}
	public void setPassPortIssueCountry(String passPortIssueCountry) {
		this.passPortIssueCountry = passPortIssueCountry;
	}
	public String getPassPortIssueAuthority() {
		return passPortIssueAuthority;
	}
	public void setPassPortIssueAuthority(String passPortIssueAuthority) {
		this.passPortIssueAuthority = passPortIssueAuthority;
	}
	public String getPassPrtDateOfIssue() {
		return passPrtDateOfIssue;
	}
	public void setPassPrtDateOfIssue(String passPrtDateOfIssue) {
		this.passPrtDateOfIssue = passPrtDateOfIssue;
	}
	public String getPassPortDateOfExpiry() {
		return passPortDateOfExpiry;
	}
	public void setPassPortDateOfExpiry(String passPortDateOfExpiry) {
		this.passPortDateOfExpiry = passPortDateOfExpiry;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public boolean isVatInvoice() {
		return vatInvoice;
	}
	public void setVatInvoice(boolean vatInvoice) {
		this.vatInvoice = vatInvoice;
	}
	public String getTaxIdentificationNumber() {
		return taxIdentificationNumber;
	}
	public void setTaxIdentificationNumber(String taxIdentificationNumber) {
		this.taxIdentificationNumber = taxIdentificationNumber;
	}
	public String getTaxNameOfCompany() {
		return taxNameOfCompany;
	}
	public void setTaxNameOfCompany(String taxNameOfCompany) {
		this.taxNameOfCompany = taxNameOfCompany;
	}
	public String getTaxCompanyofCountry() {
		return taxCompanyofCountry;
	}
	public void setTaxCompanyofCountry(String taxCompanyofCountry) {
		this.taxCompanyofCountry = taxCompanyofCountry;
	}
	public String getTaxCompanyofCity() {
		return taxCompanyofCity;
	}
	public void setTaxCompanyofCity(String taxCompanyofCity) {
		this.taxCompanyofCity = taxCompanyofCity;
	}
	public String getTaxCompanyofPostal() {
		return taxCompanyofPostal;
	}
	public void setTaxCompanyofPostal(String taxCompanyofPostal) {
		this.taxCompanyofPostal = taxCompanyofPostal;
	}
	public String getTaxCompanyofStreet() {
		return taxCompanyofStreet;
	}
	public void setTaxCompanyofStreet(String taxCompanyofStreet) {
		this.taxCompanyofStreet = taxCompanyofStreet;
	}
	public String getEmployeeStatus() {
		return employeeStatus;
	}
	public void setEmployeeStatus(String employeeStatus) {
		this.employeeStatus = employeeStatus;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public String getTransportationType() {
		return transportationType;
	}
	public void setTransportationType(String transportationType) {
		this.transportationType = transportationType;
	}
	public String getDepartureCountry() {
		return departureCountry;
	}
	public void setDepartureCountry(String departureCountry) {
		this.departureCountry = departureCountry;
	}
	public String getDepartureCity() {
		return departureCity;
	}
	public void setDepartureCity(String departureCity) {
		this.departureCity = departureCity;
	}
	public String getNameOfHotel() {
		return nameOfHotel;
	}
	public void setNameOfHotel(String nameOfHotel) {
		this.nameOfHotel = nameOfHotel;
	}
	public String getAccomodationAddress() {
		return accomodationAddress;
	}
	public void setAccomodationAddress(String accomodationAddress) {
		this.accomodationAddress = accomodationAddress;
	}
	public String getAccomodationPhoneNo() {
		return accomodationPhoneNo;
	}
	public void setAccomodationPhoneNo(String accomodationPhoneNo) {
		this.accomodationPhoneNo = accomodationPhoneNo;
	}
	public String getCheckVisaApplicationStatus() {
		return checkVisaApplicationStatus;
	}
	public void setCheckVisaApplicationStatus(String checkVisaApplicationStatus) {
		this.checkVisaApplicationStatus = checkVisaApplicationStatus;
	}
	

}