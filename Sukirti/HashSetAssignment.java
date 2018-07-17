import java.util.*;
 
class Assignment
{
    public static void main(String[]args)
    {
        HashSet<String> hs = new HashSet<String>();
 
        
        hs.add("Sukirti");
        hs.add("Shivi");
        hs.add("Jai");
        hs.add("Babbi");
 
     
        System.out.println(hs);
        System.out.println("Whether List contains Sukirti:" +
                           hs.contains("Sukirti"));
 
        
        hs.remove("Jai");
        System.out.println("After removing Jai-"+hs);
 
        // Iterating over hash set items
        System.out.println("Iterating over list:");
        Iterator<String> i = hs.iterator();
        while (i.hasNext())
            System.out.println(i.next());
    }
}