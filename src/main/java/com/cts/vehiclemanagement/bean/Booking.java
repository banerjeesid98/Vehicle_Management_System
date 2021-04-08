package com.cts.vehiclemanagement.bean;
import java.time.*;

public class Booking 
{
	private String bookingId;
	private String vehicleName;
	private String vehicleId;
	private String custName;
	private String address;
	private String emailId;
	private String phoneNo;
	
	private LocalDateTime bookingTime;

	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getBookingId() {
		return bookingId;
	}
	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}
	public String getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}
	public String getVehicleName() {
		return vehicleName;
	}
	public void setVehicleName(String vehicleName) {
		this.vehicleName = vehicleName;
	}
	public LocalDateTime getBookingTime() {
		return bookingTime;
	}
	public void setBookingTime(LocalDateTime bookingTime) {
		this.bookingTime = bookingTime;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	
	@Override
	public String toString() {
		return "Booking [bookingId=" + bookingId + ", vehicleName=" + vehicleName + ", vehicleId=" + vehicleId
				+ ", custName=" + custName + ", address=" + address + ", emailId=" + emailId + ", phoneNo=" + phoneNo
				+ ", bookingTime=" + bookingTime + "]";
	}
	
}
