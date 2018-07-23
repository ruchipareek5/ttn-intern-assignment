package Streams;

import java.util.Arrays;

public class Stream_demo {


    public static void main(String[] args) {


        Arrays.asList(1,2,3,4,5,6,7,8,9)
                // creating a stream
                .stream()
                // intermediate operations(optional)
                .filter((e)->e%2!=0)
                // terminal operations
                .forEach(System.out::println); // method referencing





                /*
                .forEach((e)->{

                    System.out.println(e);
                }); */


    }

}
