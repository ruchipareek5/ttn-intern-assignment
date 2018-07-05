package Print;

import java.util.*;
import java.util.stream.Collectors;

import Model.TTNInternModel;

abstract public class PrintTTNInterns{
	public abstract String printOneIntern();
	public static void printManyIntern(ArrayList<TTNInternModel> internArr){
		for(TTNInternModel dummy:internArr)
		{
			System.out.println(dummy.printOneIntern());
		}		
	}
	public static String generateStreamthroughLambda(ArrayList<TTNInternModel> internArr)
	{
		return internArr.stream().map(i->i.printOneIntern()).collect(Collectors.joining("\n"));
	}

	//HashMap	
	public static void printManyIntern(HashMap<String,TTNInternModel> internHash){
		for(TTNInternModel dummy:internHash.values())
		{
			System.out.println(dummy.printOneIntern());
		}		
	}

}
