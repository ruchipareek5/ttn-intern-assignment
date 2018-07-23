package Innner_Classes;



interface outer {

    void getinner1();
    interface inner {

        void getinner();


    }

}

public class Nested_Interface implements outer.inner,outer{
    @Override
    public void getinner() {
        System.out.println("this method is override by class");
    }

    @Override
    public void getinner1() {
        System.out.println("this method is override by class outer interface");
    }


    public static void main(String[] args) {

        Nested_Interface n= new Nested_Interface();

        n.getinner();

        outer.inner n1 =  new Nested_Interface();
        n1.getinner();

        outer o = new Nested_Interface();
        o.getinner1();

    }


}
