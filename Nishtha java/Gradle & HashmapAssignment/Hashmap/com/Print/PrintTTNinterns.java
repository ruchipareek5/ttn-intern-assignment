package com.Print;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import com.Model.*;
public class PrintTTNinterns {
	
public void printManyIntern(ArrayList<TTNInternModel> a){
	
		for(TTNInternModel interns : a)
		{
			System.out.println(interns);
			
		}
		System.out.println("****************************");
	}
public void printManyIntern1(Map<Integer,TTNInternModel> a){
	
	for(Map.Entry<Integer, TTNInternModel> entry : a.entrySet()) {
	    Integer key = entry.getKey();
	    TTNInternModel value = entry.getValue();
	    System.out.println(key+" "+ value);
	}
System.out.println("****************************");
}

public void printOneIntern(TTNInternModel intern){
	
	System.out.println(intern.getDate_of_birth());
	System.out.println(intern.getName());
	System.out.println(intern.getDesignation());
	System.out.println(intern.getDate_of_joining());
	
}

}