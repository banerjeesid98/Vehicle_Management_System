package com.cts.vehiclemanagement.bean;
public class Vehicle 
{
	private String vehicleId;
	private String vehicleName;
	private String vehicleType;
	private double cost;
	private double rating;
	private int qtyAvailable;
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
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public int getQtyAvailable() {
		return qtyAvailable;
	}
	public void setQtyAvailable(int qtyAvailable) {
		this.qtyAvailable = qtyAvailable;
	}
	
	public Vehicle() {
		
	}
	public Vehicle(String vehicleId, String vehicleName, String vehicleType, double cost, double rating,
			int qtyAvailable) {
		super();
		this.vehicleId = vehicleId;
		this.vehicleName = vehicleName;
		this.vehicleType = vehicleType;
		this.cost = cost;
		this.rating = rating;
		this.qtyAvailable = qtyAvailable;
	}
	@Override
	public String toString() {
		return "Vehicle [vehicleId=" + vehicleId + ", vehicleName=" + vehicleName + ", vehicleType=" + vehicleType
				+ ", cost=" + cost + ", rating=" + rating + ", qtyAvailable=" + qtyAvailable + "]";
	}
	
}
