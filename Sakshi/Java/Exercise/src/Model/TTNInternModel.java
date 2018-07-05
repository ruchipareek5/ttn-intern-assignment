package Model;
import java.util.Date;
public class TTNInternModel {
	
	String name;
	Date date_of_Birth;
	Date date_of_Joining;
	String designation;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate_of_Birth() {
		return date_of_Birth;
	}
	public void setDate_of_Birth(Date date_of_Birth) {
		this.date_of_Birth = date_of_Birth;
	}
	public Date getDate_of_Joining() {
		return date_of_Joining;
	}
	public void setDate_of_Joining(Date date_of_Joining) {
		this.date_of_Joining = date_of_Joining;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
}
