package Lambda_expression;

interface myInterface {

  //  public void display(); without any argument or return type

  String display(String name); // with return type string and argument

}


public class Lambda {


    public static void main(String[] args) {


        myInterface i = (name)->{

        //    System.out.println("java 8 ");
            return "hello "+name;

        };


String r = i.display("lamdba expression ");
        System.out.println(r);
    }
}
