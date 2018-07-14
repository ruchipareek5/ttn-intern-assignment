package CollectionPack1;

import java.util.*;

public class CursorsDemo {
    public static void main(String[] args) {
        Vector <Integer> vector=new Vector<>();
        for(int i=0;i<10;i++)
            vector.add(i);
        List<Integer> list=new ArrayList<>();
        //how to use enumerator
        Enumeration enumeration=vector.elements();
        while (enumeration.hasMoreElements())
        {
            list.add((Integer) enumeration.nextElement());
        }
        System.out.println(list);

        /*
        Limitations of Enumeration are that it is applicable only for legacy classes and has the capability to perofrm only read operation
        but not any remove operation
        while Iterator is universal cursor

         */
        Iterator <Integer> itr=list.iterator();
        while(itr.hasNext())
        {
            int i=itr.next();
            System.out.println(i);
            if(i%2==0)
            itr.remove();
        }
        System.out.println(list);

        /*
        List iterator is the child interface of the Iterator interface it is a bidirectional cursor with the capability
        of adding , removing and replacing the elements in the list only applicable for list classes
         */

    }
}
