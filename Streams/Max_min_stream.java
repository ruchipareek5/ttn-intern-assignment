package Streams;

import java.util.Arrays;
import java.util.List;

public class Max_min_stream {


    public static void main(String[] args) {


        System.out.println(

                Arrays.asList(1,2,3,4,5,6,7,8,9)
                .stream()
                .map(e->e*2)
                .mapToInt(e->e)
                .max()
        );


    }
}
