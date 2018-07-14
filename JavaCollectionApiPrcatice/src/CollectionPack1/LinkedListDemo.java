package CollectionPack1;

import java.util.LinkedList;

public class LinkedListDemo {
    public static void main(String[] args) {
        /*when we want to add or insert or delete elements form the middle Arraylist are not preferred because of multiple
            of multiple shift operations performed internally
            The underlying data structure is doubly linked list
            do not implements random Access interface
            if our frequent operations are retrival operation then we should not use linked list
            linked can be used for frequent insertion and deletion operations
            duplicates are allowed and insertion order is maintained null entry is possible
         */
        LinkedList l1=new LinkedList();
       // System.out.println(l1.remove()); throws exception no such elements
        //System.out.println(l1.removeFirst());
        //pop also throws an exception
        //removes like in queue both pop and poll
        System.out.println(l1.poll()); //returns null
       // System.out.println(l1.pop()); //exception

        for(int i=0;i<9;i++)
            l1.add(i);
        System.out.println(l1);
        System.out.println(l1.poll());
        System.out.println(l1.pop());
       //vector and arraylist are same except vector is synchronized and subtle difference between capacity and size
        //intitial vector size is 10

        //stack is based on lifo principle
        //search() method in stack returns the offset the ]last inserted element in the stack will have offset 1

    }
}
