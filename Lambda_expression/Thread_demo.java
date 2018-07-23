package Lambda_expression;

public class Thread_demo {

    public static void main(String[] args) {

                  // by annonymous inner class

     /*   new Thread(new Runnable() {
            @Override
            public void run() {
                System.out.println("Thread....");
            }
        }).start(); */


                // by lambda expression

        new Thread(()-> System.out.println("thread")).start();



    }
}
