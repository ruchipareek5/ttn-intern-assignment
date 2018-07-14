package CollectionPack1;

import java.util.HashSet;
import java.util.LinkedHashSet;

public class HashSetDemo {
    public static void main(String[] args) {
        /*
        Duplicates are not allowed
        insertion order is not maintained
        null insertion is allowed only once
        underlying data structure used is hash table
        heterogenous data elements are allowed
        if our frequent operation is searching operation we should go for hashset
        set interface doesnot have any new method and we have to use the collection interface method


        the only difference Hashset and linked hashset is insertion order is preserved in linked hashset
        program to illustrate difference between hashset and linked hashset

        hashset internally use hashmap while linked hashset internally use linked hashmap
        linked hashset and linked hashmap are used in cache applications

        only in treeset heterogenous objects are not allowed

        for empty treeset we can add null but after that we add anything we will get nul pointer exception
        for non empty tree set we get null pointer exception
         */
        HashSet hs=new HashSet();

        hs.add('b');
        hs.add('c');
        hs.add('d');
        hs.add('z');
        hs.add(null);
        hs.add(10);
        LinkedHashSet hs2=new LinkedHashSet();
        hs2.add('b');
        hs2.add('c');
        hs2.add('d');
        hs2.add('z');
        hs2.add(null);
        hs2.add(10);
        System.out.println(hs);
        System.out.println(hs2);

    }
}
