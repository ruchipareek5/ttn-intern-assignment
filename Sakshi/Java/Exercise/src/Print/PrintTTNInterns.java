package Print;
import Model.TTNInternModel;
import java.util.ArrayList;
public class PrintTTNInterns {

	
	public void  printOneIntern(TTNInternModel t)
	{
		System.out.println("Name=" + t.getName() + "\n"+ "DateofBirth=" + t.getDate_of_Birth() +"\n"+ "DateofJoining=" + t.getDate_of_Birth() + "\n"+"Designation=" + t.getDesignation()+ "\n");
	}
	
	public void printManyIntern(ArrayList<TTNInternModel> a)
	{
		for (TTNInternModel t : a) 
		{
			System.out.println("Name=" + t.getName() +"\n"+ "DateofBirth=" + t.getDate_of_Birth() +"\n"+ "DateofJoining=" + t.getDate_of_Birth() + "\n"+"Designation=" + t.getDesignation() +"\n");
		 }
	}
	
	public void generateStreamthroughLambda(ArrayList<TTNInternModel> a)
	{
		a.forEach(
				(t)->System.out.println("Name=" + t.getName() +"\n"+ "DateofBirth=" +"\n"+ t.getDate_of_Birth() +"\n"+ "DateofJoining=" + t.getDate_of_Birth() +"\n"+ "Designation=" + t.getDesignation()+"\n")
				);		
	}
}
