package Lambda_expression;

import java.util.ArrayList;
import java.util.List;

public class Lambda_collection {

    public static void main(String[] args) {

        List<String> list = new ArrayList<String>();
        list.add("hello");
        list.add("lamda");
        list.add("java");

//        for (String string:list) {
//
//            System.out.println("content of the list is :"+string);

        list.stream().forEach((string)->{
            System.out.println("content of the list is :"+string);
        });




    }
}
