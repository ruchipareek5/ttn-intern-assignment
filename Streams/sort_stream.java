package Streams;

import Lambda_expression.Employee;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class sort_stream {


    public static void main(String[] args) {

        Employee employee1 = new Employee("gagan",23);
        Employee employee2 = new Employee("nishant",21);
        Employee employee3 = new Employee("tarpit",25);
        Employee employee4 = new Employee("gagan",23);
        Employee employee5 = new Employee("nishant",21);
        Employee employee6 = new Employee("tarpit",25);

        List<Employee> list = Arrays.asList(employee1,employee2,employee3,employee4,employee5,employee6);

        System.out.println(
                list
                        .stream()
                        .sorted((x,x1)->x.getAge()-x1.getAge())
                        .collect(Collectors.toList()));

        //despite putting a set it's still showing all the repeated elements
        // have to ovveride hashcode and equals to for this
        System.out.println(
                list
                        .stream()
                        .sorted((x,x1)->x.getAge()-x1.getAge())
                        .collect(Collectors.toSet()));

        System.out.println(
                list
                        .stream()
                        .distinct()
                        .collect(Collectors.toSet()));


    }
}
