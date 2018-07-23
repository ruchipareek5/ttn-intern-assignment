package Innner_Classes;

public class InnerClass {

    private int p=30;

    class Inner{

        void message() {
            System.out.println("this is the inner class :"+p);

        }

    }


    public static void main(String[] args) {

        InnerClass  ic = new InnerClass(); // object of outer class

      //  InnerClass.Inner in = ic.new Inner(); // object creation by refering to outer class


      //  in.message();

     ic.new Inner().message();  // short-cut





    }




}
