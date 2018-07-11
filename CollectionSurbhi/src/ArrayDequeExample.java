import java.awt.*;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Spliterator;

public class ArrayDequeExample {

    public static void main(String...args)
    {
        ArrayDeque<TTNInterns> ttnInternsArrayDeque=new ArrayDeque<TTNInterns>();
        ttnInternsArrayDeque.add(new TTNInterns(1,"Surbhi"));
        ttnInternsArrayDeque.addFirst(new TTNInterns(2,"Aditi"));
        ttnInternsArrayDeque.add(new TTNInterns(4,"Rishabh"));
        ttnInternsArrayDeque.addLast(new TTNInterns(3,"Urvashi"));


        //printing all elements of deque--->add is resulting same as addLast
        System.out.println("Elements in deque are: "+ttnInternsArrayDeque);


        //contains won't work if reference of object is not same
        System.out.println("Contains when reference is not same: "+ttnInternsArrayDeque.contains(new TTNInterns(1,"Surbhi")));

        //Let's make it work;
        TTNInterns ttnInterns=new TTNInterns(5,"Vagish");
        ttnInternsArrayDeque.add(ttnInterns);
        System.out.println("Contains when reference is same : "+ttnInternsArrayDeque.contains(ttnInterns));

        //using iterator
        System.out.println("Using iterator");
        Iterator<TTNInterns>iterator1=ttnInternsArrayDeque.iterator();
        while(iterator1.hasNext())
        {
            System.out.println(iterator1.next());
        }

        //descending here means from last to first element

        Iterator<TTNInterns>iterator=ttnInternsArrayDeque.descendingIterator();
        System.out.println("Using descending iterator");
        while(iterator.hasNext())
        {
            System.out.println(iterator.next());
        }

        //element -->first element of array deque
        System.out.println("Result of element():"+ttnInternsArrayDeque.element());

        //spliterator
        Spliterator<TTNInterns> iterator3=ttnInternsArrayDeque.spliterator();
        System.out.println("Spliterator iterator");
        System.out.println(iterator3.characteristics());
    }
}
