package Functional_Interface;
import java.util.Arrays;
import java.util.List;
import java.util.function.*;

public class Consumer_demo {

    public static void main(String[] args) {

   /*     Consumer consumer = new Consumer() {
            @Override
            public void accept(Object o) {
                System.out.println(o);
            }
        };
        Integer i=10;
        consumer.accept(i);   */

   Consumer consumer = (e)->System.out.println("hello this is consumer by lambda:"+e);
        Integer i=10;
   consumer.accept(i);

        List<Integer> list = Arrays.asList(1,2,3,4,5);


        // iterating list by forEach

        list.forEach((e)->{
//            System.out.println();
            System.out.println(e);

        });

    }
}
