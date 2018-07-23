package Streams;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Stream_map {


    public static void main(String[] args) {

        List<Integer> list = Arrays.asList(1,2,3,4,5,6,7,7,8,8,88,9,5,44,3,3,22);

        ArrayList<Integer> arr = new ArrayList();

        arr.add(1);arr.add(2);arr.add(3);arr.add(3);arr.add(4);arr.add(5);arr.add(6);

        arr.stream().filter(e->e>2).forEach(System.out::println);

        System.out.println("this is by list -----------------------------");
        System.out.println(
                list
                        .stream()
                        .filter(e->e>2)
                        .collect(Collectors
                                .toList()
                        ));
        System.out.println("this is by set -----------------------------");
        System.out.println(
                list
                        .stream()
                        .filter(e->e>2)
                        .collect(Collectors
                                .toSet()
                        ));

        System.out.println("this is by map -----------------------------");
        System.out.println(
                Arrays.asList(1,2,3,4,5,6,7,8,9)
                        .stream()
                        .filter(e->e>2)
                        .collect(Collectors
                                .toMap(e->e,e->e*2)
                        ));

        System.out.println(
                list
                        .stream()
                        .skip(5)
                        .limit(3)
                .collect(Collectors.toList())
                        );


    }

}
