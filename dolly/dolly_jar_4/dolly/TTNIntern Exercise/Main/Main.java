/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import Model.TTNInternModel;
import Print.PrintTTNInterns;
import java.text.ParseException;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 *
 * @author Rajiv
 */
public class Main {
    public static void main(String[] args) throws Exception{
        TTNInternModel ttn_intern = new TTNInternModel();
        ttn_intern.setName("ayushi");
        
        SimpleDateFormat formatter = new SimpleDateFormat("dd/mm/yyyy");
        Date dob1 = formatter.parse("10/07/1996");        
        ttn_intern.setDateofbirth(dob1);
        Date dob2 = formatter.parse("20/08/2020");
        ttn_intern.setDateofjoining(dob2);
        ttn_intern.setDesignation("Associate Developer");
        
        
        TTNInternModel ttn_intern1 = new TTNInternModel();
        ttn_intern1.setName("zack");
        Date dob3 = formatter.parse("30/01/1997");
        ttn_intern1.setDateofbirth(dob3);
        Date dob4 = formatter.parse("16/11/2021");
        ttn_intern1.setDateofjoining(dob4);
        ttn_intern1.setDesignation("Tester");
       
        PrintTTNInterns ptn = new PrintTTNInterns();
        ptn.printOneIntern(ttn_intern);
        
        ArrayList<TTNInternModel> al = new ArrayList<TTNInternModel>();
        al.add(ttn_intern);
        al.add(ttn_intern1);        
        ptn.printManyIntern(al);
        
        ptn.generateStreamThroughLamba(al);
        
        HashMap<TTNInternModel,Integer> map1 = new HashMap<TTNInternModel,Integer>();
        map1.put(ttn_intern,101);
        map1.put(ttn_intern1,102);
        
        for(Map.Entry<TTNInternModel, Integer> entry : map1.entrySet()) {
		    System.out.println(entry.getKey() + " = " + entry.getValue());
		}    }
}
