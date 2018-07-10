package com.company;

public class Main {

    public static void main(String[] args) {
	// write your code here

InnerOuter a = new InnerOuter();

a.show();


InnerOuter.Inner1 b;
        b = new InnerOuter().new Inner1();

        b.Ishow();


    }


}
