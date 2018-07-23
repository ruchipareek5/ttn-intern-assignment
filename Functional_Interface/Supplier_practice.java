package Functional_Interface;

import java.util.function.Supplier;

public class Supplier_practice {

    public static void main(String[] args) {

        // supplier takes no arguments and return 1 argument

        Supplier supplier = ()->{

       return 2;

        };


        System.out.println(supplier.get());

    }
}
