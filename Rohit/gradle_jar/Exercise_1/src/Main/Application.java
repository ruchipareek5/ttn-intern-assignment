package Main;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import Model.*;
import Print.*;

public class Application {
public static void main(String args[]) throws Exception
	{
	TTNInternModel model= new TTNInternModel();
	PrintTTNIntern print=new PrintTTNIntern();
	model.setName("Rohit");
	String sDate1="12/12/1998";  
	SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy");
	Date date1=formatter.parse(sDate1);    
	model.setDateOfBirth(date1);
	model.setDesignation("Team Lead");
	String sDate2="01/05/2017";  
	Date date2=formatter.parse(sDate2);
	model.setDateOfJoining(date2);
	print.printOneIntern(model);
	TTNInternModel model1= new TTNInternModel();
	ArrayList<TTNInternModel> a= new ArrayList<TTNInternModel>();
	model1.setName("Rohit Singh");
	model1.setDesignation("product owner");
	a.add(model1);
	print.printManyIntern(a);

	TTNInternModel model3= new TTNInternModel();
	model3.setName("Akash Singh");
	String sDate3="10/12/1996";
	String sDate31="01/1/2017";
	Date date3=formatter.parse(sDate3); 
	Date date31=formatter.parse(sDate31);
	model3.setDateOfBirth(date3);
	model3.setDateOfJoining(date31);
	model3.setDesignation("developer");
	
	TTNInternModel model4= new TTNInternModel();
	model4.setName("Deepak Singh");
	String sDate4="06/12/1997";
	String sDate41="04/11/2017";
	Date date4=formatter.parse(sDate4);
	Date date41=formatter.parse(sDate41);
	model4.setDateOfBirth(date4);
	model4.setDateOfJoining(date41);
	model4.setDesignation("debugger");
	
	

	HashMap<String,TTNInternModel> h= new HashMap<String,TTNInternModel>();
	h.put("A",model3);
	h.put("B",model4);
	print.printManyInterns(h);
	}
}