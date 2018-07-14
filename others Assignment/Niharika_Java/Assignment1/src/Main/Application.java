// Niharika - Assignment 1

package Main;

import java.util.HashMap;

import Model.TTNInternModel;
import Print.PrintTTNInterns;

public class Application {
	public static void main(String[] args) {
		// Create new interns
		TTNInternModel i1 = new TTNInternModel("Niharika", "1995-12-20", "2018-06-01", "JVM Intern");
		TTNInternModel i2 = new TTNInternModel("Megha", "1997-02-16", "2018-06-01", "JVM Intern");
		TTNInternModel i3 = new TTNInternModel("Deepshikha", "1992-08-27", "2018-06-01", "JVM Intern");
		TTNInternModel i4 = new TTNInternModel("Deepika", "1994-01-20", "2018-06-01", "JVM Trainer");
				
		// Add interns to HashMap
		HashMap <String, TTNInternModel> ttn = new HashMap <String, TTNInternModel> ();
		ttn.put("Intern one", i1);
		ttn.put("Intern two", i2);
		ttn.put("Intern three", i3);
		ttn.put("Intern four", i4);
				
		// Print interns
		PrintTTNInterns print = new PrintTTNInterns();
		print.printOneIntern(ttn);
		print.generateStreamThroughLambda(ttn);
	}
}
