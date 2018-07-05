package Main;

import Model.TTNInternModel;
import Print.PrintTTNInterns;

import java.util.*;
public class Application {

	public static void main(String[] args) {
		TTNInternModel rahul=new TTNInternModel("Rahul",new Date(2001-1-1),new Date(1/1/2001),"Devops");
		TTNInternModel yatin=new TTNInternModel("Yatin",new Date(1/1/1995),new Date(2/1/2011),"Developer");
		ArrayList<TTNInternModel> internArrList=new ArrayList<>();
		internArrList.add(rahul);
		internArrList.add(yatin);
        //PrintTTNInterns.printManyIntern(internArrList);
		System.out.println(PrintTTNInterns.generateStreamthroughLambda(internArrList));
		
		//HashMap
		HashMap<String,TTNInternModel> internHash=new HashMap<String, TTNInternModel>();
		internHash.put("r",rahul);
		internHash.put("y",yatin);
        PrintTTNInterns.printManyIntern(internHash);
	}
}
