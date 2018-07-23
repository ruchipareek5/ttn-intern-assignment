package Innner_Classes;

public class Local_Inner {

    void display(){
        int pa= 4;

        class local {

            void getinfo(){
                System.out.println("this is local inner class "
                +pa);
            }

        }

        local l = new local();  // rule ---> 1) Local inner class cannot be invoked from outside the method.

        l.getinfo();


    }


    public static void main(String[] args) {


        Local_Inner li = new Local_Inner(); // creating obj of outer class

        li.display(); // calling the method that contains class


    }
}
