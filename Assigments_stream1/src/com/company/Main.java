package com.company;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {
	// write your code here

        ArrayList<Person> personList = new ArrayList<>();

        Person p1=new Person("gagan", 25, Person.Sex.male);
        Person p2= new Person("arpit", 27, Person.Sex.female);
        Person p3=new Person("surbhi", 25, Person.Sex.female);
        Person p4=new Person("nishtha", 14, Person.Sex.female);
        Person p5=new Person("prateek", 24, Person.Sex.male);
        Person p6=new Person("amarjeet", 24, Person.Sex.male);
        Person p7=new Person("gaurav", 24, Person.Sex.male);
        Person p8=new Person("sidharth", 22, Person.Sex.male);
        Person p9=new Person("dolly", 26, Person.Sex.female);
        Person p10=new Person("ayushi", 21, Person.Sex.female);

        personList.add(p1);
        personList.add(p2);
        personList.add(p3);
        personList.add(p4);
        personList.add(p5);
        personList.add(p6);
        personList.add(p7);
        personList.add(p8);
        personList.add(p9);
        personList.add(p10);

Person p = new Person();







        personList.stream().filter(e -> e.getGender() == Person.Sex.male).forEach(System.out::println);

        
    }


    }

