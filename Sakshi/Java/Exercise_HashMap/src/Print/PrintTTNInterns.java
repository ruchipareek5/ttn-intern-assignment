package Print;
import Model.TTNinternModel;

import java.util.HashMap;
import java.util.Map;

public class PrintTTNInterns {
		
		
		public void  printOneIntern(TTNinternModel t)
		{
			System.out.println("Name=" + t.getName() + "\n"+ "DateofBirth=" + t.getDate_of_Birth() +"\n"+ "DateofJoining=" + t.getDate_of_Birth() + "\n"+"Designation=" + t.getDesignation()+ "\n");
		}
		
		public void printManyInternHashMap(HashMap<Integer,TTNinternModel> a)
		{
			System.out.println("\n  HashMap \n");

			for(Map.Entry<Integer, TTNinternModel> entry:a.entrySet())
			{    
		        int key=entry.getKey();  
		        TTNinternModel  b=entry.getValue();  
		        //System.out.println("\n"+key+"	Details:	");  
		        System.out.println("\n"+b.getName() +"\n"+b.getDate_of_Birth() +"\n"+b.getDate_of_Joining()+"\n"+b.getDesignation());   
		   }
		}
}