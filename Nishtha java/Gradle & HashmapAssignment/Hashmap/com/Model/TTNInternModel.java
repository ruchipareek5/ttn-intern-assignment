package com.Model;

import java.util.Date;

public class TTNInternModel {
	public Date Date_of_birth;
	public Date Date_of_joining;
	public String Designation;
	private String name;
	public Date getDate_of_birth() {
		return Date_of_birth;
	}
	public void setDate_of_birth(Date date_of_birth) {
		Date_of_birth = date_of_birth;
	}
	public Date getDate_of_joining() {
		return Date_of_joining;
	}
	public void setDate_of_joining(Date date_of_joining) {
		Date_of_joining = date_of_joining;
	}
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String designation) {
		Designation = designation;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "TTNInternModel [Date_of_birth=" + Date_of_birth + ", Date_of_joining=" + Date_of_joining
				+ ", Designation=" + Designation + ", name=" + name + "]";
	}

}