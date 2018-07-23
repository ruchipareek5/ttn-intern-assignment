package Functional_Interface;

import java.util.function.Function;

public class function_demo {


    public static void main(String[] args) {

        Function<Integer, String > function = (e)->{

            System.out.println("this is function :"+e);
            return "gagan";

        };

       // function.apply(3);
        System.out.println(function.apply(3));
    }
}
