package Lambda_expression;

import java.lang.reflect.Array;
import java.util.*;

public class Collection_sort {

    public static void main(String[] args) {

        List<Employee> list = Arrays.asList(new Employee("gagan",23),new Employee("yash",18),new Employee("nishant",57));

      /*  Collections.sort(list, new Comparator<Employee>() {
            @Override
            public int compare(Employee o1, Employee o2) {
                return o2.getAge()-o1.getAge();
            }
        }); */

      Collections.sort(list,(o1,o2)->{
          return o1.getAge()-o2.getAge();
      });

      // can be done in a single line too

      //  Collections.sort(list, Comparator.comparingInt(Employee::getAge));

        System.out.println(list);
    }
}
