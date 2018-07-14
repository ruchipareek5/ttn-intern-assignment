package Streams.Q2;

import java.util.ArrayList;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamClass {

    public static void main(String[] args) {
        ArrayList<Person> personList = new ArrayList<>();

        personList.add(new Person("KLDG", 77, Person.Sex.m));
        personList.add(new Person("ABCD", 26, Person.Sex.f));
        personList.add(new Person("YUO", 12, Person.Sex.f));
        personList.add(new Person("LH", 45, Person.Sex.m));
        personList.add(new Person("UKF", 35, Person.Sex.m));
        personList.add(new Person("HKJ", 25, Person.Sex.f));
        personList.add(new Person("POIOU", 24, Person.Sex.m));
        personList.add(new Person("FGH", 55, Person.Sex.f));
        personList.add(new Person("HGJBK", 32, Person.Sex.m));
        personList.add(new Person("OIOU", 22, Person.Sex.f));

        Person p1 = new Person();
        Person p2 = new Person();

        personList.stream().map(p -> p.setAge(p.getAge() - 2)).forEach(System.out::println);


        System.out.println("*************************");

        personList.stream().filter(e -> e.getGender() == Person.Sex.m).forEach(System.out::println);
    }


}
