package print;

import java.util.HashMap;
import model.TTNInternModel;

public class PrintTTNInterns {
	// Print one intern
	public void printOneIntern(HashMap <String, TTNInternModel> ttnInterns) {
		System.out.println("-- Inside printOneIntern() --");
		ttnInterns.get("Intern one").getIntern();
	}
		
	// Print interns through lambda expression
	public void generateStreamThroughLambda(HashMap <String, TTNInternModel> ttnInterns) {
		System.out.println("-- Inside generateStreamThroughLambda() --");
		// ttnInterns.forEach((k, v) -> System.out.println("key: "+ k +" value: "+ v));
		ttnInterns.forEach((k, v) -> ttnInterns.get(k).getIntern());
	}
}
