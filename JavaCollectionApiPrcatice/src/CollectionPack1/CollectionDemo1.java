package CollectionPack1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CollectionDemo1 {
    public static void main(String[] args) {
        ArrayList a=new ArrayList();
        a.add(1);
        System.out.println(a.size());
        //performance wise collection are not advised because in order to add just one element after it reaches it initial capacity some extra operations are performed
        //duplicates are allowed null insertion is accepted
        //insertion order is maintained using index
        //duplicates are identified and differentiated using index
        //initial capacity of the ArrayList instantiated is 10
        //new capacity =oldcapacity* 3/2+1;
        //marker interface: marker interface are interface with no method declaration inside used to mark classes ie if a class implements a marker interface then that class is eligible to use certain methods
        a.add("souvik");
        a.add("souvik");
        a.add(null);
        a.add(3.4);
        System.out.println(a);
        //if our frequent oprtation is retreival operation we can go for arraylist

        //we can ccnvert an arraylist into a synchronized arraylist by using the method synchronizedList of collections class

        //converting the list a1 into a synchronized list

        List l=Collections.synchronizedList(a);
        System.out.println(l);
    }
}
