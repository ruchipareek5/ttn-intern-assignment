/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Print;

import Model.TTNInternModel;
import java.util.ArrayList;

/**
 *
 * @author Rajiv
 */
public class PrintTTNInterns {
    public void printOneIntern(TTNInternModel tim){
        // print one intern object 
        System.out.println("calling printOneIntern "+tim.getName()+" "+tim.getDateofbirth() +" " + tim.getDateofjoining() + " " + tim.getDesignation());
        //return tim.getName()+" "+tim.getDateofbirth() +" " + tim.getDateofjoining() + " " + tim.getDesignation();        
    }
    
    public void printManyIntern(ArrayList<TTNInternModel> al){
        //collection of TTNInternModel
        for(TTNInternModel m : al){
            System.out.println("\n"+m.toString());
        }
    }
    
    public void generateStreamThroughLamba(ArrayList<TTNInternModel> al){
        //convert ArrayList into stream of string through lamba expression
        /*String arraylist = al.toString();
        System.out.println(arraylist);*/
            al.stream().forEach(x->System.out.println(x.getName()));
    }   
    
}
