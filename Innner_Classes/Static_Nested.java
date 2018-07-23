package Innner_Classes;

public class Static_Nested {

    static int p=19;


    static class inner {

        void msg(){
            System.out.println("this is static inner class :"+p);

        }
    }

    public static void main(String[] args) {

        Static_Nested s= new Static_Nested();
       // s.msg(); // this is wrong

        Static_Nested.inner s1 = new Static_Nested.inner(); // parent.inner

        s1.msg();

    }



}
