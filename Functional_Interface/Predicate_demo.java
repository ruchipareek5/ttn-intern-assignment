package Functional_Interface;

import java.util.Scanner;
import java.util.function.Predicate;

public class Predicate_demo {


    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        // takes one argument and return an boolean

        Predicate<Integer> predicate = (e) -> {       //predicate takes one argument and return a boolean value
            System.out.println("my number is :" + e);
            return e > 2;

        };
        System.out.println("enter number :");

        Integer i = sc.nextInt(); // input

        System.out.println(predicate.test(i)); //method call

    }

}
