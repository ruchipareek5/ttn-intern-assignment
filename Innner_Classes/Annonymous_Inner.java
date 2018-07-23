package Innner_Classes;


 interface A {
     int x=21;

     public void getInt();



}

abstract  class Batches{

     abstract void getdetails();



        }

public class Annonymous_Inner {

    public static void main(String[] args) throws InterruptedException {

        A a = new A() { // interface reference object


            @Override
            public void getInt() {
                System.out.println(
                        "this is the implementation of " +
                                "annonymous inner class");
            }
        };

        Batches b = new Batches() {         // abstract class reference object
            @Override
            void getdetails() {
                System.out.println("this is annon class abstract method ");
            }
        };

        a.getInt();
        b.getdetails();


        // thread implementation by annonymous class
        // when we want to use a class methods but don't want to create a subclass
        // or extends it we can directly use it

        Thread t = new Thread() {

            @Override
            public void run() {
                System.out.println("The child thread ");
            }
        };
        Thread.sleep(10); // runs after a while
            t.start();
            System.out.println("this is main thread ");

            //same thing can be achieved in case of interface
        // thread  can be created using interface

        Runnable r = new Runnable() {
            @Override
            public void run() {
                System.out.println("This prints the interface method :");
            }
        };

        Thread t1 = new Thread(r);
        t1.start();


        // another way of doing this is by passing inner class
        // in constructor argument of Thread(......)

        Thread t2 = new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("this is the constructor inner class");
            }
        });
        t2.start();


    }
}
