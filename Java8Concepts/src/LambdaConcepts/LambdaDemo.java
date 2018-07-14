package LambdaConcepts;
@FunctionalInterface
interface i1{
    int sum(int a,int b);
}
public class LambdaDemo {
    public static void main(String[] args) {
        i1 a1=(a,b)->(a+b);
        //a1.sum(7,8);
        int i=a1.sum(70,80);
        System.out.println(i);
    }
}
//takes the solutions from the interface
/*@FunctionalInterface
* interface Runnable{
* public void run();
* }
*
*class A implements Runnable{
* public void run()
*   {
*
*    }
* }
*class ThreadDemo
* {
*   pvsm(String [] args)
*   {
*   Runnable a=new A()
*   Thread t1=new Thread(a)
*   in case of anonymous class
*   Thread t1=new Thread(new runnable (){
*       public void run()
*       {
*
*       }
*   });
*   }
* }
*
*using lambda
*class ThreadDemo
* {
*   public static void main(String []args)
*   {
*       Thread t1=new Thread(
*          ()->{
*                 //overiding the run method
*           }
*       );
*       t1.start();
*   }
* }
*
* */