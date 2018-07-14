//program to add integer to arraylist based on our own customized order

package CollectionPack1;

import java.util.Comparator;
import java.util.TreeSet;

public class ComaparableComparatorDemo {
    public static void main(String[] args) {
        /*
        * an object is said to be comparable if it implements comparable interface
        * String implements comaparable interface but string buffer doesnot implements comparable interface
        * therefore if we add StringBuffer objects to treeset we will get class cast exception
        *if return is 0 then it will the elements to be a duplicate
        * */
        //adding integer to the treeset in increasing order
        TreeSet <Integer> ts=new TreeSet<>(new MyComparator());
        ts.add(20);
        ts.add(0);
        ts.add(15);
        ts.add(5);
        ts.add(10);
        ts.add(-1);
        ts.add(1);
        System.out.println(ts);
    }
}
class MyComparator implements Comparator
{

    @Override
    public int compare(Object o1, Object o2) {
        Integer i1=(Integer)o1;
        Integer i2=(Integer)o2;
        if(i1>i2)
            return -1;
        else if(i1<i2)
            return 1;
        else
        return 0;
       /*
       return (i1>i2?1:(i1<i2?-1:0));*/
       //return i1.compareTo(i2);
       //return -i1.compareTo(i2);
       // return i2.compareTo(i1);

    }
}