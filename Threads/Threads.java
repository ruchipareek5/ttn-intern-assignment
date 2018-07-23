package Threads;

public class Threads  extends Thread{

    @Override
    public void run(){
        for (int i =0;i<20;i++){

            System.out.println(Thread.currentThread().getName());
        }


    }



    public static void main(String[] args) throws InterruptedException {


        Threads t1 = new Threads();
        Threads t2 = new Threads();
        Threads t3 = new Threads();
        Threads t4 = new Threads();
        Threads t5 = new Threads();

t3.setName("gagan");
t3.setPriority(Thread.MIN_PRIORITY);
        t3.start();
        t1.start();

        t2.start();

        t4.start();
        t5.start();


    }




}
