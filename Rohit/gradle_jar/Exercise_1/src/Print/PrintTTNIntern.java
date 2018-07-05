package Print;
import java.util.HashMap;
import java.util.ArrayList;


import java.util.Map;

import Model.*;
public class PrintTTNIntern {
	public void printOneIntern(TTNInternModel ttnIntern)
	{
				System.out.println("Name"+ttnIntern.getName());
				System.out.println("date of birth"+ttnIntern.getDateOfBirth());
				System.out.println("Name"+ttnIntern.getDateOfJoining());
				System.out.println("Name"+ttnIntern.getDesignation());
	}
	public void printManyIntern(ArrayList<TTNInternModel> collectIntern)
	{
		for(TTNInternModel t:collectIntern)
		{
			System.out.println("Name "+t.getName());
			System.out.println("date of birth "+t.getDateOfBirth());
			System.out.println("date of joining "+t.getDateOfJoining());
			System.out.println("Designation "+t.getDesignation());
	}
	}
	public void printManyInterns(HashMap<String,TTNInternModel> collectInterns)
	{
		
		for( Map.Entry t1:collectInterns.entrySet())
		{
			String Key=t1.getKey().toString();
			TTNInternModel b=(TTNInternModel)t1.getValue();
			System.out.println(Key+"  Name ");
			System.out.println(b.getName());
			System.out.println(b.getDateOfBirth());
			System.out.println(b.getDateOfJoining());
			System.out.println(b.getDesignation());
			}
	   }
}