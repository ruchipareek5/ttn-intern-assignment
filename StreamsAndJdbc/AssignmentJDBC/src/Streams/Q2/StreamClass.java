package Streams.Q2;

import java.util.ArrayList;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StreamClass {

    public static void main(String[] args) {
        ArrayList<Person> personList = new ArrayList<>();

        personList.add(new Person("Vagish", 24, Person.Sex.m));
        personList.add(new Person("ABCD", 24, Person.Sex.m));
        personList.add(new Person("YUO", 24, Person.Sex.m));
        personList.add(new Person("LH", 25, Person.Sex.m));
        personList.add(new Person("UKF", 22, Person.Sex.m));
        personList.add(new Person("HKJ", 26, Person.Sex.f));
        personList.add(new Person("POIOU", 21, Person.Sex.f));
        personList.add(new Person("FGH", 27, Person.Sex.f));
        personList.add(new Person("HGJBK", 25, Person.Sex.f));
        personList.add(new Person("OIOU", 14, Person.Sex.f));

        Person p = new Person();
        Person p1 = new Person();

        personList.stream().map(p -> p.setAge(p.getAge() - 2)).forEach(System.out::println);


        System.out.println("*************************");

        personList.stream().filter(e -> e.getGender() == Person.Sex.m).forEach(System.out::println);
    }


}
