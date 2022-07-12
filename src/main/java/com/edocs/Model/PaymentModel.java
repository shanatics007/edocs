package com.edocs.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="payment_details")
public class PaymentModel {
	@Id
	@Column(name="pkid")
	int pkid;
	@Column(name="user_id")
	long userId;
	@Column(name="application_id")
	int applicationId;
	@Column(name="payment_id")
	String paymentId;
	@Column(name="price")
	String price;
	@Column(name="payment_status")
	boolean paymentStatus;
	public PaymentModel(int pkid, long userId, int applicationId, String paymentId, String price,
			boolean paymentStatus) {
		super();
		this.pkid = pkid;
		this.userId = userId;
		this.applicationId = applicationId;
		this.paymentId = paymentId;
		this.price = price;
		this.paymentStatus = paymentStatus;
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
	public int getApplicationId() {
		return applicationId;
	}
	public void setApplicationId(int applicationId) {
		this.applicationId = applicationId;
	}
	public String getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public boolean isPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(boolean paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	
	
}
