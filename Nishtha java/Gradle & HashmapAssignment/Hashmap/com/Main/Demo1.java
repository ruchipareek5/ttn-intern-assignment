package com.Main;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.Model.TTNInternModel;
import com.Print.PrintTTNinterns;

public class Demo1 {
 public static void main(String args []) throws ParseException
 {
	 ArrayList<TTNInternModel> a = new ArrayList<>(); 
	 Map<Integer,TTNInternModel> hashmap = new HashMap<>();
	 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
	 TTNInternModel I1 = new TTNInternModel();
	 I1.setName("Nishtha");
	 I1.setDate_of_birth(sdf.parse("1994-02-03"));
	 I1.setDate_of_joining(sdf.parse("2018-06-1"));
	 I1.setDesignation("Intern");
	 
	 TTNInternModel I2 = new TTNInternModel();
	 I2.setName("Nish");
	 I2.setDate_of_birth(sdf.parse("1992-02-03"));
	 I2.setDate_of_joining(sdf.parse("2018-06-1"));
	 I2.setDesignation("Intern");
	 
	 
	 a.add(I1);
	 a.add(I2);
	 hashmap.put(1, I1);
	 hashmap.put(2, I2);
	 
	 PrintTTNinterns p = new PrintTTNinterns();
	 p.printManyIntern(a);
	 p.printOneIntern(I1);
	 System.out.println("****************************");
	 a.forEach(xyz-> {
		 		System.out.println(xyz.getName());
		 		System.out.println(xyz.getDate_of_birth());
		 		System.out.println(xyz.getDate_of_joining());
		 		System.out.println(xyz.getDesignation());
	 });
	 System.out.println("****************************");
	 p.printManyIntern1(hashmap);
	 
	 
 }
}
