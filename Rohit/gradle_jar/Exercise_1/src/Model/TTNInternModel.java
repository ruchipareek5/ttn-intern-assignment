package Model;
import java.util.Date;

public class TTNInternModel {
	private String name;
	private Date DateOfBirth;
	private Date DateOfJoining;
	private String Designation;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public Date getDateOfJoining() {
		return DateOfJoining;
	}
	public void setDateOfJoining(Date dateOfJoining) {
		DateOfJoining = dateOfJoining;
	}
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String designation) {
		Designation = designation;
	}
	
}
