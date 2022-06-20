package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@SequenceGenerator(name = "seq", initialValue = 111313)
@Table(name = "ed_user_model")
public class UserModel {

	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq")
	@Column(name = "user_id", unique = true, nullable = false)
	private Long userId;
	
	
	@Column(name = "user_email",unique = true)
	private String userEmail;
	
	@Column(name = "user_password")
	private String userPassword;
	
	@Column(name = "user_confirm_password")
	private String userConfirmPassword;
	
	@Column(name = "account_type")
	private String accountType;
	
	@Column(name = "is_created_on")
	private long isCreatedOn;
	
	@Column(name = "is_enabled", columnDefinition = "boolean default false")
	private boolean isEnabled;

	@Column(name = "user_role")
	private String userRole;
	
	@Column(name = "user_ip")
	private String userIp;
	@Column(name="full_Name")
	private String fullName;
	@Column(name="company_Name")
	private String companyName;
	

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserConfirmPassword() {
		return userConfirmPassword;
	}

	public void setUserConfirmPassword(String userConfirmPassword) {
		this.userConfirmPassword = userConfirmPassword;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public long getIsCreatedOn() {
		return isCreatedOn;
	}

	public UserModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public void setIsCreatedOn(long isCreatedOn) {
		this.isCreatedOn = isCreatedOn;
	}

	

	public boolean getIsEnabled() {
		return isEnabled;
	}

	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public String getUserIp() {
		return userIp;
	}

	public void setUserIp(String userIp) {
		this.userIp = userIp;
	}

	
	
	
	public UserModel(Long userId, String userEmail, String userPassword, String userConfirmPassword, String accountType,
			long isCreatedOn, boolean isEnabled, String userRole, String userIp, String fullName, String companyName) {
		super();
		this.userId = userId;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userConfirmPassword = userConfirmPassword;
		this.accountType = accountType;
		this.isCreatedOn = isCreatedOn;
		this.isEnabled = isEnabled;
		this.userRole = userRole;
		this.userIp = userIp;
		this.fullName = fullName;
		this.companyName = companyName;
	}

	@Override
	public String toString() {
		return "UserModel [userId=" + userId + ", userEmail=" + userEmail + ", userPassword=" + userPassword
				+ ", userConfirmPassword=" + userConfirmPassword + ", accountType=" + accountType + ", isCreatedOn="
				+ isCreatedOn + ", isEnabled=" + isEnabled + ", userRole=" + userRole + ", userIp=" + userIp
				+ ", fullName=" + fullName + ", companyName=" + companyName + "]";
	}

	

	
}
