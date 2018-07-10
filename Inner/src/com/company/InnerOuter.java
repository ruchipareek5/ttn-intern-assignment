package com.company;

public class InnerOuter {



    static int s = 10;

    public void show() {

        System.out.println("this is the outer class");
    }

       class Inner1 {

//can't have static declaration inside Inner classes






           public void Ishow() {

               System.out.println("this is the inner class");


           }




    }




}
