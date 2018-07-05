package Model;

import java.util.Date;

import Print.PrintTTNInterns;

public class TTNInternModel extends PrintTTNInterns{
	String name;
	Date dob;
	Date doj;
	String designation;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Date getDoj() {
		return doj;
	}
	public void setDoj(Date doj) {
		this.doj = doj;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public TTNInternModel(String name, Date dob, Date doj, String designation) {
		super();
		this.name = name;
		this.dob = dob;
		this.doj = doj;
		this.designation = designation;
	}
	public String printOneIntern(){
		return this.getName()+" "+this.getDesignation()+" "+this.getDob()+" "+this.getDoj(); 
	}
}
