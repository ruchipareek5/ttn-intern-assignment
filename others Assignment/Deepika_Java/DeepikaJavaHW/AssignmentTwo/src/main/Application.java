// Deepika Tiwari - Java Assignment 2

package main;

import java.util.HashMap;

import model.TTNInternModel;
import print.PrintTTNInterns;

public class Application {
	public static void main(String[] args) {
		// Create new interns
		TTNInternModel i1 = new TTNInternModel("Deepika", "2000-11-19", "2018-06-01", "JVM Intern");
		TTNInternModel i2 = new TTNInternModel("Niharika", "2000-04-17", "2018-06-01", "JVM Intern");
		TTNInternModel i3 = new TTNInternModel("Deepshikha", "2000-06-27", "2018-06-01", "JVM Intern");
		TTNInternModel i4 = new TTNInternModel("Ruchi", "2000-01-08", "2018-06-01", "JVM Trainer");
				
		// Add interns to HashMap
		HashMap <String, TTNInternModel> ttnInterns = new HashMap <String, TTNInternModel> ();
		ttnInterns.put("Intern one", i1);
		ttnInterns.put("Intern two", i2);
		ttnInterns.put("Intern three", i3);
		ttnInterns.put("Intern four", i4);
				
		// Print interns
		PrintTTNInterns printer = new PrintTTNInterns();
		printer.printOneIntern(ttnInterns);
		printer.generateStreamThroughLambda(ttnInterns);
	}
}
