package Threads;

public class Worker_Thread implements Runnable{

   private String message;

    public Worker_Thread(String s) {
        this.message=s;

    }

    @Override
    public void run() {

        System.out.println(Thread.currentThread().getName()+"(Start) message"+message);
processmessage();
        System.out.println(Thread.currentThread().getName()+"(END)");
    }

    private void processmessage() {
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
