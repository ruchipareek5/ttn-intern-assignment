package Main;

import java.text.SimpleDateFormat;
import java.util.*;
import Model.TTNinternModel;
import Print.PrintTTNInterns;

public class Application {

	public static void main(String[] args) throws Exception{
	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	
	TTNinternModel t1= new TTNinternModel();
	t1.setName("A");
    Date birth = formatter.parse("23/12/1995");  
    t1.setDate_of_Birth(birth);
    Date join = formatter.parse("01/06/2018"); 
	t1.setDate_of_Joining(join);
	t1.setDesignation("Intern");
	

	TTNinternModel t2= new TTNinternModel();
	t2.setName("B");
    Date birth2 = formatter.parse("23/08/1996");  
	t2.setDate_of_Birth(birth2);
	Date join2 = formatter.parse("01/05/2017"); 
	t2.setDate_of_Joining(join2);
	t2.setDesignation("Asst. Manager");
	
	
	PrintTTNInterns p1 = new PrintTTNInterns();
	p1.printOneIntern(t1);
	
	HashMap<Integer,TTNinternModel> a= new HashMap<Integer,TTNinternModel>();
	a.put(1,t1);
	a.put(2,t2);
	PrintTTNInterns p4 = new PrintTTNInterns();
	p4.printManyInternHashMap(a);
	
	}
}
