package model;

public class TTNInternModel {
	public String name;
	public String dateOfBirth;
	public String dateOfJoining;
	public String designation;

	// Constructor
	public TTNInternModel(String name, String dateOfBirth, String dateOfJoining, String designation) {
		super();
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.dateOfJoining = dateOfJoining;
		this.designation = designation;
	}
	
	// Get all details of an intern
	public void getIntern() {
		System.out.println(name + " with DOB " + dateOfBirth + " joined as " + designation + " on " + dateOfJoining);
	}
}
