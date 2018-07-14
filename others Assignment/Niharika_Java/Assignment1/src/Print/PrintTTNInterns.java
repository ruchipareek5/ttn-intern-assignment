package Print;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import Model.TTNInternModel;

public class PrintTTNInterns {
	// Print one intern
	public void printOneIntern(HashMap <String, TTNInternModel> ttn) {
		System.out.println("-- Inside printOneIntern() --");
		ttn.get("Intern one").getIntern();
	}
		
	// Print interns through lambda expression
	public void generateStreamThroughLambda(HashMap <String, TTNInternModel> ttn) {
		System.out.println("-- Inside generateStreamThroughLambda() --");
		// ttn.forEach((k, v) -> System.out.println("key: "+ k +" value: "+ v));
		ttn.forEach((k, v) -> ttn.get(k).getIntern());
	}
}
