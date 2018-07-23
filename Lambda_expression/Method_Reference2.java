package Lambda_expression;

@FunctionalInterface
interface myInterface2{

    void display();


}

public class Method_Reference2 {
    public void method(){

        System.out.println("this is my method : thread..");

    }


    public static void main(String[] args) {

        myInterface2 interface2 = new Method_Reference2()::method;
        //interface2.display();
        Runnable r1 = new Method_Reference2()::method;
        r1.run();


    }
}
